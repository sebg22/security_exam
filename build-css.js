// build-css.js
import fs from 'fs';
import path from 'path';
import MojoSCG from 'mojocss/src/interop/scg.js';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

// Polyfill __dirname i ESM
const __filename = fileURLToPath(import.meta.url);
const __dirname  = dirname(__filename);

// 1) Læs alle .html-filer i templates/
const templatesDir = path.join(__dirname, 'templates');
let html = '';
for (const file of fs.readdirSync(templatesDir)) {
  if (file.endsWith('.html')) {
    html += fs.readFileSync(path.join(templatesDir, file), 'utf-8');
  }
}

// 2) Kør SCG over den samlede HTML
const scg = new MojoSCG(html, {});
const css = scg.render();

// 3) Skriv færdigt CSS til static/mojocss.css
const outPath = path.join(__dirname, 'static', 'mojocss.css');
fs.writeFileSync(outPath, css, 'utf-8');
console.log(`🛠️  Skrev ${outPath} (${css.length} bytes)`);
