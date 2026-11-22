# Rotina diária do Instagram @lander_cripto

Perfil de criptomoedas para o público brasileiro. Tudo em português do Brasil.
Metricool: blogId **8186187**, provider `instagram`, fuso `America/Sao_Paulo`.
Imagens/vídeos ficam públicos em:
`https://raw.githubusercontent.com/diogocwbzs-wq/lander-cripto-posts/main/<pasta>/<arquivo>`

## Regras que valem para todos os horários
- **Nunca invente números.** Pesquise na web dados das últimas horas e cite as fontes em letra pequena nos slides.
- Números no padrão brasileiro: `US$ 65.037`, `+1,51%`, `US$ 2,2 tri`.
- **Nada de recomendação**: sem "compre/venda", sem alvo de preço, sem "call". Conteúdo informativo e educativo (regras da CVM). **Não** coloque avisos do tipo "conteúdo informativo / não é recomendação" nos slides nem na legenda (decisão do dono do perfil); a proteção é simplesmente nunca recomendar. Zonas de preço só se citadas por uma fonte, e marcadas como informativas.
- Siga o visual dos modelos em `template/` (azul e preto). Troque só textos, números e notícias; o número de slides pode variar entre 4 e 7.
- Depois de gerar, **abra cada imagem** e confira se nada vaza, sobrepõe ou quebra linha errado. Corrija e gere de novo se preciso.
- Pasta do dia: `AAAA-MM-DD/`. Nomes: `HHh_feed_N.png`, `HHh_story_1.png`, `HHh_reel.mp4`.
  Para HTML vertical (story/reel), copie `template/vertical.css` para a pasta do dia.
- Ferramentas: `python3 template/render.py <html> <pasta> <prefixo>` e `bash template/make_reel.sh <pasta> <prefixo> <saida.mp4>`.
- Commit e `git -c push.negotiate=true push origin main`; confira que as URLs respondem 200 antes de agendar.
- Se o horário-alvo já passou, agende para daqui a 10 minutos.

## Crescimento orgânico (vale para TODO post)
Objetivo: atrair seguidores novos, não só agradar quem já segue.
- **Capa/gancho**: o slide 1 (e o 1º quadro do Reel) tem que parar o dedo. Manchete curta (máx. 8 palavras), com número, contraste ou curiosidade. Ex.: "Bitcoin caiu 12% em 7 dias. E agora?", "3 erros que liquidam iniciante". Nada de capa genérica.
- **SEO do Instagram**: a 1ª linha da legenda leva palavras que o público busca (ex.: "Bitcoin hoje", "mercado cripto hoje", "o que é staking"). Escreva frases naturais com essas palavras.
- **Hashtags**: 5 a 8 por post, misturando 2 grandes (#bitcoin #criptomoedas), 3 médias (#mercadocripto #bitcoinbrasil #criptobrasil) e 2 específicas do tema do dia. Coloque as hashtags no `firstCommentText` (primeiro comentário), não na legenda.
- **Texto alternativo**: preencha `mediaAltText` com uma frase descrevendo cada imagem (ajuda a busca).
- **Pedir ação que gera alcance**: compartilhar e salvar contam mais que curtir. Termine a legenda com UMA pergunta simples que convide a comentar (ex.: "Você acha que o BTC volta pros 70 mil este mês? Comenta 👇" — é pergunta ao público, não recomendação) e com "Manda pra aquele amigo que opera cripto".
- **Último slide** sempre convida a seguir @lander_cripto e mostra o que ele ganha seguindo (resumo diário, 5 posts por dia).
- **Assuntos quentes primeiro**: se houver notícia forte do dia (ETF, regulação no Brasil, Receita Federal, golpe famoso, queda/alta brusca), ela vira a capa do horário seguinte.
- **Brasil em destaque**: sempre que possível, mostre o preço do BTC também em reais (R$) e cite notícias do Brasil (CVM, Banco Central, Receita, exchanges brasileiras). O público BR se identifica e compartilha mais.

## Trial Reel (alcance para quem ainda não segue)
No SLOT 14h, além do carrossel educativo, gere **um Reel curto do mesmo tema** (5 quadros com `template/reel.html`: gancho em forma de pergunta, 3 quadros com a explicação, CTA "Siga para aprender cripto todo dia") e agende às **14:30** com `instagramData.type = "TRIAL_REEL"`. O Trial Reel é mostrado primeiro para quem não segue a conta. Se o Metricool recusar o tipo TRIAL_REEL, publique como `REEL` normal e avise na mensagem final.

## Aprendizados da semana
(Atualizado todo domingo pela análise semanal. Leia e aplique antes de criar qualquer post.)
_Semana 15–22/11/2026_
- ⚠️ Desde 19/11 todo agendamento volta com ERRO "You have reached your Metricool account limit" (Instagram, TikTok e Facebook): nada saiu de 19 a 22/11. Depois de agendar, confira o status; se vier esse erro, avise o usuário em destaque na mensagem final.
- Dados reais só de 17–18/11 (4 carrosséis): 8 contas alcançadas, 39 visualizações, 3 comentários, 0 salvamentos/compartilhamentos, 0 seguidores novos (total 42). Amostra pequena: trate o resto como hipótese.
- Melhor post: Fechamento 17/11 20h (9 visualizações) com capa de movimento concreto ("BTC bateu US$ 65 mil e voltou"). Capa com número + movimento do dia > capa genérica: manter.
- Pior post: Bom dia 18/11 06h (2 visualizações). 06h é o horário mais fraco do Metricool (~5x menos atividade que 10h): a notícia mais forte do dia vai para a capa das 10h ou 18h, não das 06h.
- Melhores horários previstos (Metricool): 10h é o pico de seg–sex, depois 11–12h e 18h; 20h é médio; sáb/dom têm metade da atividade.
- Legendas que terminaram com pergunta concreta (Fed, BTC nos US$ 65 mil) tiveram comentário; a sem pergunta (17/11 10h) teve 0. Sempre feche com pergunta específica do dia.
- Salvamentos e compartilhamentos zerados: inclua 1 slide "consultável" (tabela, checklist, glossário) e escreva "Salva pra consultar depois" no próprio slide, não só na legenda.
- Reel, Trial Reel e story ainda sem nenhum dado (não chegaram a publicar). Não tirar conclusão de formato até haver dados.

## Legenda (feed e reel)
1. Título com emoji (ex.: `📊 Resumo do mercado cripto — 18/11`)
2. 2–3 frases resumindo o post + convite (arrasta / assiste até o fim)
3. `💾 Salve pra consultar depois e siga @lander_cripto.`
4. Pergunta para comentar + "Manda pra aquele amigo que opera cripto".
5. Hashtags vão no `firstCommentText` (ver Crescimento orgânico).

## TikTok (@Lander_cripto) — vale para TODOS os horários
Todo conteúdo do Instagram também vai para o TikTok, no **mesmo horário**, como um agendamento **separado** no Metricool (provider `tiktok`, nunca no mesmo post do Instagram).
- **Carrossel** → post de fotos no TikTok. O TikTok **não aceita PNG**: converta cada slide para JPG (`python3 -c "from PIL import Image; Image.open('X.png').convert('RGB').save('X.jpg', quality=92)"`), nomes `HHh_tiktok_N.jpg`, e use as URLs .jpg.
  `tiktokData`: `{"privacyOption":"PUBLIC_TO_EVERYONE","autoAddMusic":true,"title":"<manchete da capa, até 90 caracteres>","photoCoverIndex":0,"disableComment":false,"disableDuet":false,"disableStitch":false,"commercialContentThirdParty":false,"commercialContentOwnBrand":false,"isAigc":false}`
- **Reel / Trial Reel** → vídeo no TikTok com o mesmo .mp4. `tiktokData` igual, mas **sem** `autoAddMusic` (o vídeo já tem trilha). O `title` é **obrigatório** também no vídeo (até 90 caracteres), senão o Metricool recusa.
- **Story** não vai para o TikTok.
- **Legenda do TikTok**: curta (2–3 linhas), começa com a palavra-chave buscada ("Bitcoin hoje:", "O que é staking?"), um convite (arrasta / assiste até o fim), uma pergunta para comentar, e 5–6 hashtags **na própria legenda** (#bitcoin #criptomoedas #mercadocripto #cripto #bitcoinbrasil + 1 do tema). Sem `firstCommentText`.
- Se o TikTok falhar, o Instagram continua normal; só avise na mensagem final.

## Facebook (Página Lander Cripto) — vale para TODOS os horários
Todo conteúdo também vai para a Página do Facebook, no **mesmo horário**, como agendamento **separado** no Metricool (provider `facebook`, nunca junto com Instagram/TikTok).
- **Carrossel** → `facebookData: {"type":"POST"}` com as mesmas imagens (pode usar os .jpg do TikTok).
- **Reel / Trial Reel** → `facebookData: {"type":"REEL"}` com o mesmo .mp4.
- **Story** → `facebookData: {"type":"STORY"}` com a mesma imagem do story do Instagram, 1 minuto depois do post, sem texto.
- **Legenda do Facebook**: frases completas (público mais velho), 3–4 parágrafos curtos: o fato principal com números, convite para ver as imagens/vídeo, uma pergunta para comentar e "👉 Siga a Lander Cripto pra receber o resumo do mercado todo dia." No máximo 3 hashtags no final. Sem `firstCommentText`.
- Se o Facebook falhar, as outras redes continuam normais; só avise na mensagem final.

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
Ao terminar, envie ao usuário uma mensagem curta: o que foi agendado (Instagram feed/reel + story, TikTok e Facebook), horário e o `plannerUrl` do Metricool. Se algo falhar (dados, push, Metricool), diga claramente o que falhou.
