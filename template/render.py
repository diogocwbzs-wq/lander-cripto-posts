# Gera um PNG por <section class="slide"> do HTML (feed 1080x1350, story/reel 1080x1920).
# Uso: python3 template/render.py <html> <pasta_saida> <prefixo>
#  -> <pasta_saida>/<prefixo>_1.png, _2.png ...
# O HTML pode usar <link href="vertical.css">: copie template/vertical.css para a mesma pasta do HTML.
import asyncio, sys, os
from playwright.async_api import async_playwright
html, out, prefix = sys.argv[1], sys.argv[2], sys.argv[3]
async def main():
    os.makedirs(out, exist_ok=True)
    async with async_playwright() as p:
        kw = {"executable_path": "/usr/bin/google-chrome"} if os.path.exists("/usr/bin/google-chrome") else {}
        b = await p.chromium.launch(**kw)
        pg = await b.new_page(viewport={"width": 1100, "height": 2000})
        await pg.goto("file://" + os.path.abspath(html))
        await pg.wait_for_timeout(700)
        slides = pg.locator("section.slide")
        n = await slides.count()
        for i in range(n):
            await slides.nth(i).screenshot(path=f"{out}/{prefix}_{i+1}.png")
        print(f"{n} imagens geradas em {out}")
        await b.close()
asyncio.run(main())
