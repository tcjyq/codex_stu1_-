# AGENT.md

## Project Overview

This is the personal homepage project for Ma Hongjia. The current production entry is Django + Vue:

- Django handles backend, database, admin, and serving the built Vue assets.
- Admin is available at `/admin/` and uses `django-simpleui`.
- Vue 3 + Vite handles the public personal homepage.
- The root route `/` is served by `homepage.views.vue_home`, which reads the latest `static/vue/index.html` on every request to avoid stale Vite asset hashes.
- `code练习-个人主页.html` is now only a UTF-8 redirect page to `http://127.0.0.1:8000/`. The old standalone HTML was backed up to `tmp/code练习-个人主页.backup.html`.

## Tech Stack

### Backend

- Python virtual environment: `.venv/`
- Django installed in `.venv/`
- SQLite database: `db.sqlite3`
- Admin theme: `django-simpleui`
- Language: `zh-hans`
- Time zone: `Asia/Shanghai`

### Frontend

- Vue 3
- Vite
- GSAP / ScrollTrigger for premium motion
- Frontend source: `frontend/`
- Built assets served by Django: `static/vue/`

## Key Paths

```text
.
??? manage.py
??? db.sqlite3
??? personal_site/          # Django project settings and urls
??? homepage/               # Django app; vue_home serves the Vue entry
??? frontend/               # Vue frontend source
??? static/vue/             # Vite build output used by Django
??? staticfiles/            # collectstatic output
??? scripts/                # watchdog/startup helper scripts
??? tmp/                    # temp files and old HTML backup
??? .venv/                  # Python virtual environment
??? code练习-个人主页.html     # redirect page; not the source of truth
```

## Run Locally

Activate the Python environment:

```powershell
.\.venv\Scripts\Activate.ps1
```

Start Django:

```powershell
python manage.py runserver 127.0.0.1:8000
```

Open:

```text
http://127.0.0.1:8000/
```

Admin:

```text
http://127.0.0.1:8000/admin/
```

## Build Frontend

```powershell
cd frontend
npm run build
```

The build output goes to:

```text
static/vue/
```

After every frontend change, rebuild before checking the Django page.

## Routes

`personal_site/urls.py`:

- `/admin/` -> Django Admin + SimpleUI
- `/` -> `homepage.views.vue_home` -> latest `static/vue/index.html`

## Always-On / Watchdog

Two helper scripts keep the development site easier to access:

```powershell
.\scripts\serve-django-watch.ps1
.\scripts\start-django-watch.ps1
```

The watchdog checks `http://127.0.0.1:8000/` and starts Django with:

```powershell
.\.venv\Scripts\python.exe manage.py runserver 127.0.0.1:8000 --noreload
```

A Windows Startup shortcut has been created here:

```text
C:\Users\ma041\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Codex个人主页-Django守护.lnk
```

Important limitation: this is a user-login watchdog, not a system Windows Service. It starts after Windows login and can restart Django if it stops, but it will not run while the computer is shut down, logged out, or asleep.

## Admin Account

Existing superuser:

- Username: `18020505090`
- Email: `2496978741@qq.com`
- Nickname: `天才九月七`

Do not write the plaintext password into code or docs. Use Django admin or management commands if the password needs to be reset.

## Frontend Experience Requirements

Keep these core homepage qualities:

- Dark premium portfolio style for job search.
- Starfield background and mouse-driven interaction should stay visible.
- GSAP-driven opening animation, page transitions, and staggered card reveals.
- Liquid-glass navigation and cards, optimized enough to avoid obvious stutter.
- Current avatar source: `frontend/src/assets/avatar-id-photo.jpg`.
- The local avatar upload feature was removed per user request.
- Do not re-add the phone number to the public homepage; privacy was explicitly requested.
- Chinese text must remain UTF-8. Verify no `???` or mojibake after edits.

## Resume Sync Notes

The homepage has been lightly synced with the text resume without overcrowding the layout:

- Job direction: AI large-model applications and data analysis.
- Education highlights: Information Management and Information Systems, GPA 3.12/4, two consecutive school third-class scholarships.
- Project highlights: Apple quality data K-means clustering; university library management UML modeling.
- Tools/skills: Python, MySQL, Excel/WPS, Enterprise Architect, Codex, Claude Code, DeepSeek, ChatGPT, Gemini.
- Public contact keeps email and WeChat only.

## Development Notes

- Prefer editing `frontend/src/App.vue` and `frontend/src/style.css` for public page changes.
- Do not hand-edit `.venv/` or `node_modules/`.
- Do not delete `static/vue/`; it is the current Django frontend source.
- Do not commit plaintext passwords or private phone numbers.
- If Django admin static assets look wrong, run `collectstatic`.

## Checks

```powershell
# Django config
.\.venv\Scripts\python.exe manage.py check

# Vue build
npm --prefix frontend run build

# Local HTTP checks
Invoke-WebRequest -Uri 'http://127.0.0.1:8000/' -UseBasicParsing
Invoke-WebRequest -Uri 'http://127.0.0.1:8000/admin/' -UseBasicParsing
```

## Guidance For Future Agents

1. The production homepage is Vue served by Django, not `code练习-个人主页.html`.
2. After frontend edits, run `npm --prefix frontend run build`.
3. Verify `/` returns 200 and the built `static/vue/index.html` points to current assets.
4. Keep the starfield/liquid-glass/GSAP direction unless the user asks otherwise.
5. Preserve privacy decisions: do not put the phone number back on the public site.
