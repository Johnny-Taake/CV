<script setup lang="ts">
const contactLinks = [
  { label: 'Telegram', href: 'https://t.me/Johnny_Taake', icon: 'fa-brands fa-telegram' },
  { label: 'LinkedIn', href: 'http://linkedin.com/in/ivan-alexandrovsky', icon: 'fa-brands fa-linkedin' },
  { label: 'GitHub', href: 'https://github.com/IvanAleksandrovskii', icon: 'fa-brands fa-github' },
  { label: 'Email', href: 'mailto:ivan.aleksandrovskii@gmail.com', icon: 'fa-solid fa-envelope' },
]

const quickFacts = [
  'Bangkok, Thailand (UTC+7)',
  'Russian native, English C1, Thai basic, German basic',
  'Car and motorcycle driving licences',
  'Open to service, operations, technical and developer roles',
]

const coreCompetencies = [
  'Customer communication and service quality',
  'Problem solving under pressure',
  'Technical troubleshooting and documentation',
  'Workflow organization and process improvement',
  'Fast learning and adaptability',
  'Safety awareness, driving and field mobility',
]

const workHistory = [
  {
    role: 'Full-stack Engineer',
    company: 'Freelance / Self-Employed',
    period: 'Sep 2025 - Present',
    points: [
      'Developed backend components for web applications and internal tools.',
      'Set up automation workflows, environments, databases and deployment infrastructure.',
      'Integrated AI-related features and practical LLM-assisted workflows.',
    ],
  },
  {
    role: 'Backend Developer',
    company: 'Atlantis',
    period: 'Feb 2025 - Aug 2025',
    points: [
      'Built backend services in Rust and Python for HealthTech, FinTech and internal developer tooling.',
      'Developed gRPC APIs and translated Figma designs into backend logic and data models.',
      'Troubleshot, upgraded and documented backend microservices in a remote team.',
    ],
  },
  {
    role: 'Python Backend Developer',
    company: 'CHRONA AI / CHRONA AGENCY',
    period: 'Feb 2024 - Jun 2025',
    points: [
      'Built HR, recruitment automation, onboarding and Telegram-based products.',
      'Designed Telegram Mini Apps, bots, admin panels and FastAPI services with PostgreSQL.',
      'Handled Docker deployment, VPS setup, OpenAI and HuggingFace integrations.',
    ],
  },
  {
    role: 'Python Automation Developer',
    company: 'NDA Trading Project / Alber Blanc',
    period: 'Sep 2021 - Sep 2023',
    points: [
      'Automated business operations, sales support, recruiting workflows and structured data handling.',
      'Built Python and Excel-based tools that reduced manual operational work.',
    ],
  },
]

const developerStack = [
  'Python',
  'Rust',
  'FastAPI',
  'Django',
  'PostgreSQL',
  'SQLAlchemy',
  'Alembic',
  'Docker',
  'React',
  'TypeScript',
  'gRPC',
  'Protobuf',
  'Linux',
  'Telegram Bots',
  'OpenAI API',
]

const developerProjects = [
  'Medical diabetes monitoring platform: backend and documentation for patient metrics and doctor analytics. Stack: Rust, Diesel, PostgreSQL, gRPC.',
  'Psychological testing platform: Telegram Mini App and admin panel for tests directly in chat. Stack: FastAPI, PostgreSQL, Aiogram, React, Docker.',
  'Telegram relay, broadcasting and bot-constructor tools for message routing, anti-blocking logic and no-code admin configuration.',
  'Pet projects: chess analyzers with Stockfish, card game logic, UI experiments and small Rust desktop apps.',
]

const serviceStrengths = [
  '7 years of customer-facing hospitality experience.',
  'Bar, service, sales and front-of-house communication in fast-paced environments.',
  'Conflict resolution, calm tone under pressure and responsibility for guest experience.',
  'Shift discipline, stock awareness, product turnover and day-to-day service operations.',
  'Comfortable with multicultural guests, Russian-speaking and English-speaking customers.',
  'Technical mindset useful for POS, booking, inventory and operational systems.',
]

const operationsStrengths = [
  'Warehouse and stock-aware work: product movement, order accuracy, tool discipline and practical process control.',
  'Factory and operational environments: attention to safety, repeated procedures, pace and reliability.',
  'Repair and equipment troubleshooting: isolate issues, test assumptions, find a working fix and document what changed.',
  'Driving and mobility: car and motorcycle licences, scooter and manual motorcycle experience, urban and long-distance riding.',
  'Infrastructure mindset: Linux, VPS, Docker, networking basics, deployment, debugging and monitoring awareness.',
]

const education = [
  {
    title: 'Saint Petersburg State University of Aerospace Instrumentation (SUAI)',
    meta: 'Institute of Radio Engineering and Infocommunication Technologies | 2016 - 2020',
    text: "Incomplete Bachelor's degree. Studied radio engineering, infocommunication technologies and technical systems.",
  },
  {
    title: 'Saint Petersburg State University of Telecommunications (SPbSUT), Specialized Lyceum',
    meta: 'Physics and Information Technologies | 2016',
    text: 'Studied physics, information technologies, C++ and algorithms.',
  },
]

function printPage() {
  window.print()
}
</script>

<template>
  <article class="cv-shell">
    <aside class="sidebar" aria-label="Profile summary">
      <div class="monogram" aria-hidden="true">IA</div>

      <section class="identity">
        <p class="eyebrow">CV package</p>
        <h1 class="name">Ivan Aleksandrovskii</h1>
        <!-- TODO: Edit - too complex and not including sales and service -->
        <p class="role">Versatile Technical Professional</p>
      </section>

      <section>
        <!-- TODO: Edit style (make contacts use more than 1 line if
              possible and if enough width show 3 in a row) & add Line -->
        <h2>Contact</h2>
        <ul class="contact-list">
          <li v-for="link in contactLinks" :key="link.label">
            <a :href="link.href">
              <i :class="link.icon" aria-hidden="true"></i>
              <span>{{ link.label }}</span>
            </a>
          </li>
        </ul>
      </section>

      <section>
        <h2>Quick facts</h2>
        <ul class="plain-list compact">
          <li v-for="fact in quickFacts" :key="fact">{{ fact }}</li>
        </ul>
      </section>

      <section>
        <h2>Resume versions</h2>
        <nav class="resume-nav" aria-label="Resume versions">
          <a href="#general">General CV</a>
          <a href="#developer">Developer CV</a>
          <a href="#service">Service / Bar / Sales</a>
          <a href="#operations">Operations / Repair</a>
        </nav>
      </section>
    </aside>

    <main class="main">
      <header class="hero">
        <div>
          <p class="kicker">Based on ResumeV2 / General CV + Developer Appendix</p>
          <p class="summary">
            Broad CV page for roles where service, operations, technical thinking and software
            development can support each other. The attached versions below can be printed or copied
            as separate resumes depending on the target company.
          </p>
        </div>
        <button type="button" class="print-button" @click="printPage">
          <i class="fa-solid fa-print" aria-hidden="true"></i>
          Print
        </button>
      </header>

      <section id="general" class="resume-section lead-section">
        <div class="section-head">
          <p class="section-number">01</p>
          <h2>General CV</h2>
        </div>
        <div class="two-column">
          <div>
            <h3>Profile</h3>
            <p>
              Versatile professional with experience across software development, automation,
              hospitality, customer communication, technical troubleshooting and driving. Comfortable
              in dynamic environments where fast learning, responsibility, calm communication and
              practical problem solving matter every day.
            </p>
            <p>
              Based in Bangkok with family and open to roles where technical thinking, customer-facing
              confidence, mobility and reliability are useful in day-to-day work.
            </p>
          </div>
          <div>
            <h3>Core competencies</h3>
            <ul class="tag-list">
              <li v-for="item in coreCompetencies" :key="item">{{ item }}</li>
            </ul>
          </div>
        </div>

        <div class="timeline-block">
          <h3>Work history</h3>
          <ol class="timeline">
            <li v-for="job in workHistory" :key="`${job.role}-${job.company}`" class="timeline-item">
              <h4>{{ job.role }}</h4>
              <p class="meta">{{ job.company }} / {{ job.period }}</p>
              <ul>
                <li v-for="point in job.points" :key="point">{{ point }}</li>
              </ul>
            </li>
          </ol>
        </div>
      </section>

      <section id="developer" class="resume-section accent-section">
        <div class="section-head">
          <p class="section-number">02</p>
          <h2>Developer Resume</h2>
        </div>
        <p class="section-intro">
          Backend-focused full-stack developer profile for Python, Rust, PostgreSQL, FastAPI, Docker,
          gRPC, Telegram products, automation and AI integrations.
        </p>
        <div class="two-column">
          <div>
            <h3>Core stack</h3>
            <ul class="pill-list">
              <li v-for="item in developerStack" :key="item">{{ item }}</li>
            </ul>
          </div>
          <div>
            <h3>Selected projects</h3>
            <ul class="plain-list">
              <li v-for="project in developerProjects" :key="project">{{ project }}</li>
            </ul>
          </div>
        </div>
      </section>

      <section id="service" class="resume-section">
        <div class="section-head">
          <p class="section-number">03</p>
          <h2>Service, Bar and Sales Resume</h2>
        </div>
        <p class="section-intro">
          Use this version for bars, hospitality, retail, venue operations, customer service and
          sales-adjacent roles where communication, discipline and pressure handling are more important
          than a narrow software profile.
        </p>
        <ul class="feature-grid">
          <li v-for="item in serviceStrengths" :key="item">{{ item }}</li>
        </ul>
      </section>

      <section id="operations" class="resume-section">
        <div class="section-head">
          <p class="section-number">04</p>
          <h2>Factory, Warehouse and Repair Resume</h2>
        </div>
        <p class="section-intro">
          Use this version for warehouse, factory, technical assistant, field support, driver,
          repair-adjacent and infrastructure-support roles.
        </p>
        <ul class="feature-grid">
          <li v-for="item in operationsStrengths" :key="item">{{ item }}</li>
        </ul>
      </section>

      <section class="resume-section education-section">
        <div class="section-head">
          <p class="section-number">05</p>
          <h2>Education and Languages</h2>
        </div>
        <div class="two-column">
          <div>
            <article v-for="item in education" :key="item.title" class="education-item">
              <h3>{{ item.title }}</h3>
              <p class="meta">{{ item.meta }}</p>
              <p>{{ item.text }}</p>
            </article>
          </div>
          <div>
            <h3>Languages</h3>
            <ul class="pill-list">
              <li>Russian: Native</li>
              <li>English: C1</li>
              <li>Thai: Basic / learning</li>
              <li>German: Basic</li>
            </ul>
          </div>
        </div>
      </section>
    </main>
  </article>
</template>
