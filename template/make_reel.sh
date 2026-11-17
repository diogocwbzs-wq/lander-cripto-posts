#!/usr/bin/env bash
# Monta um Reel 1080x1920 a partir de quadros PNG (gerados por render.py com template/reel.html).
# Uso: bash template/make_reel.sh <pasta> <prefixo> <saida.mp4> [segundos_por_quadro=4]
# Cada quadro ganha um zoom lento; transição suave entre quadros; trilha ambiente sintetizada (sem direitos autorais).
set -euo pipefail
DIR="$1"; PREFIX="$2"; OUT="$3"; SEC="${4:-4}"
FPS=30; XF=0.5
FRAMES=( $(ls "$DIR"/"$PREFIX"_*.png | sort -V) )
N=${#FRAMES[@]}
INPUTS=(); FILTER=""
for i in "${!FRAMES[@]}"; do
  INPUTS+=( -loop 1 -t "$SEC" -i "${FRAMES[$i]}" )
  D=$(( SEC * FPS ))
  FILTER+="[$i:v]scale=2160:-2,zoompan=z='min(zoom+0.0007,1.08)':x='iw/2-(iw/zoom/2)':y='ih/2-(ih/zoom/2)':d=${D}:s=1080x1920:fps=${FPS},setsar=1,format=yuv420p[v$i];"
done
PREV="v0"; OFFSET=0
for (( i=1; i<N; i++ )); do
  OFFSET=$(python3 -c "print(round($SEC*$i - $XF*$i, 3))")
  FILTER+="[$PREV][v$i]xfade=transition=slideleft:duration=${XF}:offset=${OFFSET}[x$i];"
  PREV="x$i"
done
TOTAL=$(python3 -c "print(round($SEC*$N - $XF*($N-1), 3))")
AUDIO="aevalsrc='0.10*sin(2*PI*110*t)*(0.6+0.4*sin(2*PI*0.25*t))+0.035*(sin(2*PI*220*t)+sin(2*PI*261.63*t)+sin(2*PI*329.63*t))*(0.7+0.3*sin(2*PI*0.5*t))+0.35*sin(2*PI*52*t)*exp(-14*mod(t,0.6))':s=44100:d=${TOTAL}"
ffmpeg -y -loglevel error "${INPUTS[@]}" -f lavfi -i "$AUDIO" \
  -filter_complex "${FILTER%;};[$N:a]lowpass=f=1800,afade=t=in:d=1,afade=t=out:st=$(python3 -c "print($TOTAL-1.2)"):d=1.2,volume=0.8[a]" \
  -map "[$PREV]" -map "[a]" -c:v libx264 -preset veryfast -crf 20 -pix_fmt yuv420p -r $FPS \
  -c:a aac -b:a 128k -movflags +faststart -t "$TOTAL" "$OUT"
echo "Reel gerado: $OUT (${TOTAL}s)"
