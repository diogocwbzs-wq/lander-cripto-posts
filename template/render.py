# Uso: python3 template/render.py <caminho_do_html> <pasta_saida> <prefixo>
import asyncio, sys, os
from playwright.async_api import async_playwright
html, out, prefix = sys.argv[1], sys.argv[2], sys.argv[3]
async def main():
    os.makedirs(out, exist_ok=True)
    async with async_playwright() as p:
        b = await p.chromium.launch(executable_path="/usr/bin/google-chrome") if os.path.exists("/usr/bin/google-chrome") else await p.chromium.launch()
        pg = await b.new_page(viewport={"width":1100,"height":1400})
        await pg.goto("file://" + os.path.abspath(html))
        await pg.wait_for_timeout(600)
        n = await pg.locator("section.slide").count()
        for i in range(1, n+1):
            await pg.locator(f"#s{i}").screenshot(path=f"{out}/{prefix}_{i}.png")
        await b.close()
asyncio.run(main())
