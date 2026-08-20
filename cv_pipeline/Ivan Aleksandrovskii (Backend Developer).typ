// Theme tokens shared with the main Vue app.
#let theme = json("../src/data/theme.json")
#let colors = theme.tokens
#let paper = rgb(colors.paper)
#let ink = rgb(colors.ink)
#let muted = rgb(colors.muted)
#let border = rgb(colors.border)
#let accent = rgb(colors.accent)

#set page(
  paper: theme.typst.pageSize,
  margin: 0.7in,
  fill: paper,
)

#set text(
  font: theme.typst.localBodyFont,
  size: 10pt,
  fill: ink,
)

#set par(
  leading: 0.6em,
  justify: true,
)

#show link: it => text(fill: accent)[#it]

#show heading: it => block(
  above: 0.45cm,
  below: 0.22cm,
)[
  #text(fill: accent, weight: "bold")[#it.body]
  #v(0.08cm)
  #line(length: 100%, stroke: 0.5pt + border)
]

== #strong[Ivan Aleksandrovskii]
<ivan-aleksandrovskii>
#strong[Software Engineer (Python / Rust / Fullstack)]

#block(
  width: 100%,
  inset: 0.14in,
  stroke: 0.5pt + border,
  radius: 0pt,
)[
  #text(fill: accent, weight: "bold")[CONTACT]

  #v(0.06in)

  #strong[Location:] Bangkok, Thailand (UTC+7) \
  #strong[Email:] #link("mailto:ivan.aleksandrovskii@gmail.com")[ivan.aleksandrovskii\@gmail.com] \
  #strong[Telegram:] #link("https://t.me/Johnny_Taake")[\@Johnny\_Taake] \
  #strong[Line QR:] #link("https://line.me/ti/p/IzRK5OQuEO")[line.me/ti/p/IzRK5OQuEO] \
  #strong[LinkedIn:] #link("https://linkedin.com/in/ivan-alexandrovsky")[linkedin.com/in/ivan-alexandrovsky] \
  #strong[GitHub:] #link("https://github.com/Johnny-Taake")[github.com/Johnny-Taake]
]

Backend-focused full-stack developer with a background in Python
automation, internal tooling, and product-oriented backend development.
My path into engineering started with technical automation work and
gradually evolved into building backend systems, APIs, Telegram-based
products, and internal tools in startup environments.

I build scalable backend systems and APIs (REST/gRPC) in Python and
Rust, with a focus on performance, maintainability, and practical
product delivery. My work also includes AI integrations, backend logic
based on evolving prototypes, and full-cycle implementation in
fast-moving remote teams. I care about clean architecture and practical
engineering decisions that help products move from idea to release.

#strong[Core stack:] Python · Rust · PostgreSQL · FastAPI · Django ·
SQLAlchemy · Alembic · Docker · Git · React · TypeScript · gRPC ·
Protobuf

=== #strong[#underline[TECH STACK]]
<tech-stack>
#strong[Languages:] Python · JavaScript / TypeScript · Rust · SQL · Bash

#strong[Backend & APIs:] FastAPI · aiohttp · Django · Django REST
Framework · Flask · Axum · Tokio · Actix Web · SeaORM · Tonic/gRPC ·
Celery · RabbitMQ · OAuth2 · Swagger/OpenAPI · Pydantic · SQLAlchemy ·
Alembic · SQLAdmin

#strong[Frontend:] Vue · React · Vite · Axios · Telegram Mini Apps SDK · SPA /
API-first architecture

#strong[Databases:] PostgreSQL · MySQL · SQLite · MongoDB · Redis

#strong[DevOps & Infrastructure:] Docker · Docker Compose · Nginx · VPS
deployment · WSL2 · Git · GitHub/GitLab CI/CD (learning)

#strong[Automation & AI:] Selenium · PyAutoGUI · HuggingFace
Transformers · OpenAI API · RAG with vector embeddings (bge-m3)

#strong[Testing:] pytest · Rust's cargo test

#strong[Other:] Git · Protocol Buffers · gRPC · WebSockets · REST · Tmux

#strong[Learning Focus:] Rust · JavaScript · CI/CD · Kafka · scalable
architecture

#strong[#underline[WORK EXPERIENCE]]

#strong[Full-stack Engineer (Freelance / Self-Employed) Sep 2025 --
Present]

Working on independent technical projects involving backend development,
web applications, automation, and AI integrations. Focused on practical
engineering tasks, prototyping, system setup, and expanding technical
depth through hands-on work.

#emph[Results:]

- Developed backend components for web applications and internal tools

- Worked on automation setup and workflow optimization for small-scale
  technical use cases

- Integrated AI-related features and experimented with practical
  LLM-assisted workflows

- Configured environments, databases, and deployment infrastructure for
  project needs

- Mentored junior specialists on selected technical tasks and
  implementation approaches

- Used this period to deepen engineering practice through independent
  project work and targeted upskilling

#strong[Backend / Full-stack Developer Feb 2024 - Aug 2025]

#strong[CHRONA AI / CHRONA AGENCY / Atlantis (remote)]

Worked with the same core team under CHRONA AI / CHRONA AGENCY and later
Atlantis, contributing to HRTech, HealthTech, FinTech, internal tooling,
and developer workflow automation products. Started in an early-stage
startup environment and gradually took on backend architecture, product
implementation, API integrations, deployment, documentation, and
cross-functional delivery responsibilities.

Built Telegram-based products, backend services, AI integrations, and
internal engineering tools in a remote team with evolving requirements,
MVP-first delivery, asynchronous collaboration, and a high degree of
autonomy.

#emph[Results:]

- Designed and implemented Telegram Mini Apps for candidate testing and
  onboarding flows

- Developed custom Telegram bots for automation, message routing, test
  completion, and broadcasting

- Built backend services with FastAPI and PostgreSQL, including external
  API integrations

- Managed Docker-based containerization and VPS deployment

- Integrated AI solutions using OpenAI and HuggingFace models

- Designed and maintained backend services in Rust and Python

- Developed APIs using gRPC

- Translated Figma-based product designs into backend logic, data
  models, and technical documentation

- Troubleshot, debugged, and upgraded backend microservices

- Built internal tools in TypeScript and RPC-generation utilities in
  Rust

- Applied Domain-Driven Design principles in backend implementation

- Interpreted product prototypes and translated them into backend
  structure and logic

- Collaborated with UI/UX designers and frontend developers to align
  implementation with product goals

#strong[Python Automation Developer Oct 2022 -- Sep 2023]

#strong[NDA Trading Project (Non IT), Thailand (hybrid)]

Worked on Python-based automation for business operations, sales, data
handling, and internal workflows.

#emph[Results:]

- Automated data collection and transformation with Python scripts

- Built Excel-based and Python-based tools for workflow automation

- Supported reporting and operational processes through structured data
  preparation and automation

#strong[Python Automation Developer Sep 2021 - Mar 2022]

#strong[Àlber Blanc (Contract), Saint-Petersburg (remote)]

Supported recruiting operations through Python-based automation and
internal workflow tooling.

#emph[Results:]

- Built Python-based automation tools for candidate processing and
  recruiting workflows

- Worked with structured data, filtering, and operational support for
  high-volume hiring tasks

- Reduced manual work through internal scripts and process automation

- Gained early commercial experience in Python development and
  backend-oriented problem solving

#strong[#underline[EDUCATION]]

#strong[Saint Petersburg State University of Aerospace Instrumentation
(SUAI), 2020]

#emph[Incomplete Bachelor\'s degree,] Institute of Radio Engineering and
Infocommunication Technologies, Department of Radiotechnical and
Optoelectronic Complexes

#strong[Saint Petersburg State University of Telecommunications
(SPbSUT), Specialized Lyceum, 2016]#emph[ \ ]Studied physics and
information technologies (C++, algorithms). The lyceum was the first
Promethean Centre of Excellence in Russia --- an international
initiative for interactive tech education.

#strong[#underline[PROJECTS]]

#strong[MAIN PROJECTS (ATLANTIS) \ ]

#strong[Medical Diabetes Monitoring Platform:] Contributed to backend
and documentation for a medical platform that tracks diabetic patients'
metrics and provides analytics for doctors and dietitians.
#emph[#strong[Stack:] Rust, Diesel, PostgreSQL, gRPC.]

#strong[Crypto Trading (NDA)]: Worked on a confidential project
implementing trading logic. #emph[#strong[Stack:] Python, Numpy, Pandas,
Backtrader, PostgreSQL.]

=== #strong[MAIN PROJECTS (CHRONA)]
<main-projects-chrona>
#strong[Psychological Testing Platform:] Telegram Mini App + admin panel
(React + FastAPI) for conducting tests directly in chat.
#emph[#strong[Stack:] FastAPI, PostgreSQL, Aiogram, Docker, VPS
deployment.]

#strong[Telegram Relay Bot + Broadcasting Tool:] Custom logic for
message forwarding between chats; anti-blocking solutions. Parallel
version for advertising delivery.

#strong[Telegram Bot Constructor with Admin Interface:] Backend system
allowing custom logic setup without code changes. #emph[#strong[Stack:]
FastAPI, SQLAdmin, PostgreSQL, Aiogram.]

#strong[Money Transfer Finder Bot]: Telegram bot integrated with
external data sources and notification system

#strong[Automation Tools:] Bash scripts, Selenium-based automations,
proxy routing setup.

#strong[PET PROJECTS:] Chess analyzers with Stockfish | Card games logic
and UI experiments | Small desktop apps built with Rust.
