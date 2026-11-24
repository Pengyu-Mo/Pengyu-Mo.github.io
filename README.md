# Personal Website

Personal academic website of Pengyu Mo, built with [Jekyll](https://jekyllrb.com/) and the
[al-folio](https://github.com/alshedivat/al-folio) theme. Deployed to GitHub Pages at
<https://pengyu-mo.github.io/>.

## Where to edit

| What                     | File(s)                                                           |
| ------------------------ | ----------------------------------------------------------------- |
| Name, site description   | `_config.yml` (top of the file)                                   |
| About page / bio         | `_pages/about.md`                                                 |
| Profile photo            | `assets/img/prof_pic.jpg` (replace the file, keep the name)       |
| Publications             | `_bibliography/papers.bib` (BibTeX; `selected={true}` shows on home) |
| Publication thumbnails   | `assets/img/publication_preview/` (referenced by `preview={...}`) |
| CV page                  | `_data/cv.yml`; PDF link in `_pages/cv.md`                        |
| Social links / email     | `_data/socials.yml`                                               |
| News items on home page  | `_news/*.md`                                                      |
| Show/hide a nav item     | `nav: true/false` in the page's front matter under `_pages/`      |

Pages such as blog, projects, talks, teaching and repositories are kept but hidden
(`nav: false`). Flip the flag to turn one on.

## Deploy

Every push to `main` runs `.github/workflows/deploy.yml`, which builds the site and
publishes it to the `gh-pages` branch. GitHub Pages serves from that branch.

## Local preview

On this machine Ruby 3.3 (with MSYS2 DevKit and ImageMagick) is already installed, so from a
PowerShell terminal in this folder just run:

```powershell
.\serve.ps1
```

Then open <http://localhost:4000>. The page reloads automatically when you save a file.
`.build.ps1` produces a production build into `_site/` without serving it.

On another machine see `INSTALL.md`, or use Docker (`docker compose up`, then <http://localhost:8080>).

## Credits

Theme: [al-folio](https://github.com/alshedivat/al-folio) (MIT License).
