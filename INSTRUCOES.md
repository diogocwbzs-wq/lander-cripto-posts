# Rotina diária do Instagram @lander_cripto

Perfil de criptomoedas para o público brasileiro. Tudo em português do Brasil.
Metricool: blogId **8186187**, provider `instagram`, fuso `America/Sao_Paulo`.
Imagens/vídeos ficam públicos em:
`https://raw.githubusercontent.com/diogocwbzs-wq/lander-cripto-posts/main/<pasta>/<arquivo>`

## Regras que valem para todos os horários
- **Nunca invente números.** Pesquise na web dados das últimas horas e cite as fontes em letra pequena nos slides.
- Números no padrão brasileiro: `US$ 65.037`, `+1,51%`, `US$ 2,2 tri`.
- **Nada de recomendação**: sem "compre/venda", sem alvo de preço, sem "call". Conteúdo informativo e educativo (regras da CVM). Zonas de preço só se citadas por uma fonte, e marcadas como informativas.
- Siga o visual dos modelos em `template/` (azul e preto). Troque só textos, números e notícias; o número de slides pode variar entre 4 e 7.
- Depois de gerar, **abra cada imagem** e confira se nada vaza, sobrepõe ou quebra linha errado. Corrija e gere de novo se preciso.
- Pasta do dia: `AAAA-MM-DD/`. Nomes: `HHh_feed_N.png`, `HHh_story_1.png`, `HHh_reel.mp4`.
  Para HTML vertical (story/reel), copie `template/vertical.css` para a pasta do dia.
- Ferramentas: `python3 template/render.py <html> <pasta> <prefixo>` e `bash template/make_reel.sh <pasta> <prefixo> <saida.mp4>`.
- Commit e `git -c push.negotiate=true push origin main`; confira que as URLs respondem 200 antes de agendar.
- Se o horário-alvo já passou, agende para daqui a 10 minutos.

## Legenda (feed e reel)
1. Título com emoji (ex.: `📊 Resumo do mercado cripto — 18/11`)
2. 2–3 frases resumindo o post + convite (arrasta / assiste até o fim)
3. `💾 Salve pra consultar depois e siga @lander_cripto.`
4. `⚠️ Conteúdo informativo, não é recomendação de investimento.`
5. 6 a 8 hashtags relevantes (#bitcoin #criptomoedas #btc #mercadocripto #ethereum #investimentos …)

## Story de cada horário
Todo horário publica também **1 story** (1080x1920) baseado em `template/story.html`: chamada para o post do feed com o dado principal do momento.
Agende com `instagramData.type = "STORY"`, **sem texto** (campo text vazio), sem links/figurinhas, 1 minuto depois do post do feed.

## Os 5 horários

### SLOT 06h — "Bom dia, mercado" (carrossel)
O que aconteceu durante a madrugada (Ásia/EUA): preço e variação de BTC e ETH, maiores movimentos, 2–3 notícias da noite, e a **agenda do dia** (dados econômicos, falas do Fed, eventos cripto). Capa: "Bom dia, mercado ☕" + preço do BTC.

### SLOT 10h — "Resumo do mercado" (carrossel, modelo `template/post.html`)
1 capa com manchete do dia + BTC; 2 principais moedas (BTC, ETH, SOL, XRP, BNB, DOGE); 3 termômetro (Medo & Ganância, valor total do mercado, dominância BTC, volume 24h, BTC em 7 dias); 4 "O que mexeu com o mercado" (4 notícias); 5 "Fique de olho"; 6 CTA. Aos sábados: "Resumo da semana".

### SLOT 14h — Educativo (carrossel)
Um tema da lista abaixo que ainda **não** esteja em `educativos_feitos.txt` (escolha na ordem). Explique de forma simples, com exemplo prático e um slide final "Resumo em 3 pontos" + CTA. Depois de agendar, acrescente o tema em `educativos_feitos.txt` e faça commit/push.
Temas: O que é Bitcoin e por que ele tem valor · O que é halving · Stablecoins (USDT, USDC) · Como funciona uma exchange · Carteira quente x carteira fria · Seed phrase: como proteger · Golpes mais comuns em cripto · O que é Ethereum e smart contracts · O que são altcoins · Market cap x preço · Dominância do Bitcoin · Índice de Medo & Ganância · Volume: por que importa · Suporte e resistência (conceito) · Velas/candles: como ler · Médias móveis · O que é RSI · Mercado spot x futuros · Alavancagem e liquidação · Funding rate · Open interest · ETFs de Bitcoin · O que é DeFi · O que é staking · NFTs: o que sobrou · Layer 2 · Solana x Ethereum · Como declarar cripto no Brasil (conceitos gerais, sem aconselhamento) · Gestão de risco: tamanho de posição · DCA: aportes recorrentes (conceito)
Quando a lista acabar, recomece com novos ângulos dos mesmos temas.

### SLOT 18h — Reel "O mercado em 20 segundos" (vídeo, modelo `template/reel.html`)
5 quadros: gancho; BTC com preço/variação do dia; principais moedas; Medo & Ganância ou a notícia mais forte do dia; CTA. Gere os PNGs com render.py e o vídeo com make_reel.sh (~18s, trilha ambiente própria). Agende com `instagramData.type = "REEL"`, `showReelOnFeed: true`, media = URL do .mp4.

### SLOT 20h — "Fechamento do dia" (carrossel)
Como o mercado terminou o dia: BTC e ETH no dia, **maiores altas e maiores baixas** entre as top 100, notícia que dominou o dia, e o que esperar para amanhã (agenda). Aos domingos: "Agenda da semana".

## Mensagem final
Ao terminar, envie ao usuário uma mensagem curta: o que foi agendado (feed/reel + story), horário e o `plannerUrl` do Metricool. Se algo falhar (dados, push, Metricool), diga claramente o que falhou.
