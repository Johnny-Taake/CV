<script setup lang="ts">
import { computed, nextTick, ref } from 'vue'
import backendHtml from '../cv_pipeline/Ivan Aleksandrovskii (Backend Developer).html?raw'
import bartenderHtml from '../cv_pipeline/Ivan Aleksandrovskii (Bartender).html?raw'

type ContactLink = {
  label: string
  href: string
  icon: string
}

type LifeStep = {
  period: string
  title: string
  group: string
  text: string
}

type Sheet = {
  id: string
  title: string
  tone: string
  source: string
  path: string
  html: string
}

const contactLinks: ContactLink[] = [
  { label: 'Telegram', href: 'https://t.me/Johnny_Taake', icon: 'fa-brands fa-telegram' },
  { label: 'Line', href: 'https://line.me/ti/p/IzRK5OQuEO', icon: 'fa-brands fa-line' },
  { label: 'LinkedIn', href: 'http://linkedin.com/in/ivan-alexandrovsky', icon: 'fa-brands fa-linkedin' },
  { label: 'GitHub', href: 'https://github.com/Johnny-Taake', icon: 'fa-brands fa-github' },
  { label: 'Email', href: 'mailto:ivan.aleksandrovskii@gmail.com', icon: 'fa-solid fa-envelope' },
]

const quickFacts = [
  'Bangkok, Thailand (UTC+7)',
  'Russian native, English C1, Thai basic, German basic',
  'Python / Rust / backend systems, automation and product delivery',
  'Hospitality, operations, mobility and customer-facing background',
]

const lifePath: LifeStep[] = [
  {
    period: '2016 - 2020',
    title: 'Engineering foundation',
    group: 'Education and technical base',
    text: 'Radio engineering, physics, C++, algorithms and a practical habit of learning technical systems from the inside.',
  },
  {
    period: '2017 - 2023',
    title: 'Service and operations',
    group: 'Bars, hotel, events, distribution',
    text: 'Guest communication, bar shifts, inventory, cash discipline, sales, event service and pressure-handling in real operating environments.',
  },
  {
    period: '2021 - 2023',
    title: 'Automation bridge',
    group: 'Python scripts and workflow tools',
    text: 'Moved from manual operations into Python automation, structured data handling, Excel tooling and recruiting/business workflow support.',
  },
  {
    period: '2024 - 2025',
    title: 'Product backend and systems depth',
    group: 'CHRONA AI / CHRONA AGENCY / Atlantis',
    text: 'Worked with the same core team across HRTech, HealthTech, FinTech, Telegram products, internal tools, FastAPI services, Rust/Python backend systems, gRPC and AI-assisted product flows.',
  },
  {
    period: '2025 - now',
    title: 'Independent practice',
    group: 'Freelance, learning and applied projects',
    text: 'Combining backend, web, automation, AI workflows, mentoring and deeper engineering practice around systems that can actually ship.',
  },
]

const directionCards = [
  {
    title: 'Software engineering',
    text: 'Backend systems, APIs, PostgreSQL, FastAPI, Rust, gRPC, Docker, internal tools, Telegram products and AI integrations.',
  },
  {
    title: 'Service and communication',
    text: 'Seven years around hospitality, guests, sales, bar operations, team rhythm and high-load customer-facing environments.',
  },
  {
    title: 'Operations and mobility',
    text: 'Stock-aware work, order discipline, troubleshooting mindset, driving licences, scooters, motorcycles and field-ready practicality.',
  },
  {
    title: 'Learning curve',
    text: 'A path shaped by self-study, fast adaptation, multicultural work, technical curiosity and responsibility for outcomes.',
  },
]

const stackGroups = [
  ['Python', 'FastAPI', 'PostgreSQL', 'Docker', 'SQLAlchemy', 'Alembic'],
  ['Rust', 'gRPC', 'Protobuf', 'Tokio', 'Axum', 'Diesel'],
  ['React', 'Vue', 'TypeScript', 'Telegram Mini Apps', 'Aiogram'],
  ['OpenAI API', 'HuggingFace', 'Selenium', 'Linux', 'Nginx', 'VPS'],
]

const sheets: Sheet[] = [
  {
    id: 'developer-sheet',
    title: 'Developer sheet',
    tone: 'Detailed software CV for backend, automation, startup and product engineering roles.',
    source: 'Generated from Typst',
    path: '/cv_pipeline/Ivan Aleksandrovskii (Backend Developer).html',
    html: backendHtml,
  },
  {
    id: 'bartender-sheet',
    title: 'Hospitality sheet',
    tone: 'Detailed service, bar, sales and HoReCa operations CV for local or customer-facing roles.',
    source: 'Generated from Typst',
    path: '/cv_pipeline/Ivan Aleksandrovskii (Bartender).html',
    html: bartenderHtml,
  },
]

const activeSheetId = ref<string | null>(null)
const activeSheet = computed(() => sheets.find((sheet) => sheet.id === activeSheetId.value) ?? null)

function extractBody(html: string) {
  const match = html.match(/<body[^>]*>([\s\S]*?)<\/body>/i)
  return match?.[1]?.trim() ?? html
}

function stripScreenRepeatedHeader(html: string) {
  return extractBody(html)
    .replace(/<section class="contact-card"[\s\S]*?<\/section>/i, '')
    .trim()
}

function openSheet(sheetId: string) {
  activeSheetId.value = sheetId
  nextTick(() => {
    document.getElementById(sheetId)?.scrollIntoView({ behavior: 'smooth', block: 'start' })
  })
}

async function printSheet(sheetId: string) {
  activeSheetId.value = sheetId
  await nextTick()
  window.print()
}
</script>

<template>
  <article class="cv-shell">
    <aside class="sidebar" aria-label="Profile navigation">
      <div class="monogram" aria-hidden="true">IA</div>

      <section class="identity">
        <p class="eyebrow">CV package</p>
        <h1 class="name">Ivan Aleksandrovskii</h1>
        <p class="role">life path / technical profile</p>
      </section>

      <section>
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
        <h2>Sheets</h2>
        <nav class="resume-nav" aria-label="Generated CV sheets">
          <a href="#life-path">Life path</a>
          <a
            v-for="sheet in sheets"
            :key="sheet.id"
            :href="`#${sheet.id}`"
            :aria-current="activeSheetId === sheet.id ? 'page' : undefined"
            @click.prevent="openSheet(sheet.id)"
          >
            {{ sheet.title }}
          </a>
        </nav>
      </section>

      <section>
        <h2>Quick facts</h2>
        <ul class="plain-list compact">
          <li v-for="fact in quickFacts" :key="fact">{{ fact }}</li>
        </ul>
      </section>
    </aside>

    <main class="main">
      <section id="life-path" class="resume-section lead-section overview-card">
        <div class="hero">
          <div>
            <p class="kicker">General CV</p>
            <h2>Engineer with service, operations and product experience</h2>
          </div>
          <p class="summary">
            My path combines hospitality and customer-facing work, Python automation, backend
            engineering, startup product delivery, Rust systems work and independent technical
            practice. This page is intentionally broad: it introduces the person and the trajectory;
            the generated sheets below carry the role-specific detail.
          </p>
        </div>

        <div class="direction-grid" aria-label="Profile directions">
          <article v-for="card in directionCards" :key="card.title">
            <h3>{{ card.title }}</h3>
            <p>{{ card.text }}</p>
          </article>
        </div>

        <section class="timeline-block" aria-label="Life path graph">
          <div class="section-head">
            <p class="section-number">01</p>
            <h2>Life path</h2>
          </div>
          <ol class="timeline">
            <li
              v-for="step in lifePath"
              :key="`${step.period}-${step.title}`"
              class="timeline-item path-node"
            >
              <p class="path-period">{{ step.period }}</p>
              <h3>{{ step.title }}</h3>
              <p class="meta">{{ step.group }}</p>
              <p>{{ step.text }}</p>
            </li>
          </ol>
        </section>

        <section class="stack-strip" aria-label="Technical and practical stack">
          <div v-for="group in stackGroups" :key="group.join('-')" class="stack-group">
            <span v-for="item in group" :key="item">{{ item }}</span>
          </div>
        </section>
      </section>

      <section class="sheet-deck" aria-label="Generated Typst sheets">
        <div class="sheet-note">
          <p class="kicker">Generated sheets</p>
          <p>
            Open one sheet here, then use Print / Save to print it or save it as PDF from the
            browser print dialog.
          </p>
        </div>

        <div class="sheet-link-grid">
          <article v-for="sheet in sheets" :key="`link-${sheet.id}`" class="sheet-link-card">
            <div>
              <p class="kicker">{{ sheet.source }}</p>
              <h3>{{ sheet.title }}</h3>
              <p>{{ sheet.tone }}</p>
            </div>
            <div class="sheet-actions">
              <button type="button" class="open-sheet" @click="openSheet(sheet.id)">Open</button>
              <a class="open-sheet muted-action" :href="sheet.path" target="_blank" rel="noreferrer">
                New tab
              </a>
            </div>
          </article>
        </div>

        <article v-if="activeSheet" :id="activeSheet.id" class="sheet-panel">
          <header class="sheet-panel-head">
            <div>
              <p class="kicker">{{ activeSheet.source }}</p>
              <h2>{{ activeSheet.title }}</h2>
              <p>{{ activeSheet.tone }}</p>
            </div>
            <button type="button" class="open-sheet print-save-button" @click="printSheet(activeSheet.id)">
              <i class="fa-solid fa-print" aria-hidden="true"></i>
              <span aria-hidden="true">/</span>
              <i class="fa-solid fa-file-arrow-down" aria-hidden="true"></i>
              <span>Print / Save</span>
            </button>
          </header>

          <div class="typst-sheet screen-sheet" v-html="stripScreenRepeatedHeader(activeSheet.html)"></div>
        </article>
      </section>

      <section v-if="activeSheet" class="print-docs" aria-label="Printable generated sheet">
        <article class="typst-sheet print-sheet" v-html="extractBody(activeSheet.html)"></article>
      </section>
    </main>
  </article>
</template>
