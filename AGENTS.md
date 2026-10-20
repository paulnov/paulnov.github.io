# Website and CV sources

For website or CV updates, read `~/Dropbox/py/cv/AGENTS.md` and use the `update-web-site` skill.

- Shared generator: `~/Dropbox/py/cv/cv.py`. It generates this repository's `index.html` and `pdf/paul-novosad-cv.pdf`.
- Edit homepage biography and contact title in `~/Dropbox/py/cv/index-template.html`; edit CV appointments in `~/Dropbox/py/cv/cv-template.tex`. Rebuild generated files from those sources.
- `code.html`, `data.html`, `jobs.html`, and `reading.html` have independently maintained contact blocks; check these when changing the title.
- Run the generator from `~/Dropbox/py/cv/` in Conda environment `cv`: `conda run --no-capture-output -n cv python cv.py`. Check the environment location locally; a previously documented absolute interpreter path was absent in the October 2026 audit.
- Review website Git status before rebuilding. The generator copies both homepage and CV into this repository; verify the PDF and LaTeX logs as well as the HTML output.
