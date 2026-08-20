import theme from './data/theme.json'

function hexToRgbChannels(hex: string) {
  const normalized = hex.replace('#', '')
  const chars =
    normalized.length === 3
      ? normalized
          .split('')
          .map((char) => char + char)
          .join('')
      : normalized

  if (chars.length !== 6) {
    throw new Error(`Unsupported color format: ${hex}`)
  }

  const red = Number.parseInt(chars.slice(0, 2), 16)
  const green = Number.parseInt(chars.slice(2, 4), 16)
  const blue = Number.parseInt(chars.slice(4, 6), 16)

  return `${red} ${green} ${blue}`
}

function toCssDeclaration(name: string, value: string) {
  return `  ${name}: ${value};`
}

export function applyTheme() {
  const { tokens, alpha, webLayout } = theme
  const variables = {
    '--paper': tokens.paper,
    '--surface': tokens.surface,
    '--ink': tokens.ink,
    '--ink-soft': tokens.inkSoft,
    '--muted': tokens.muted,
    '--border': tokens.border,
    '--accent': tokens.accent,
    '--accent-soft': tokens.accentSoft,
    '--accent-surface': tokens.accentSurface,
    '--paper-rgb': hexToRgbChannels(tokens.paper),
    '--ink-rgb': hexToRgbChannels(tokens.ink),
    '--accent-rgb': hexToRgbChannels(tokens.accent),
    '--accent-soft-rgb': hexToRgbChannels(tokens.accentSoft),
    '--accent-surface-rgb': hexToRgbChannels(tokens.accentSurface),
    '--paper-border': `rgb(var(--paper-rgb) / ${alpha.paperBorder})`,
    '--sidebar-text': `rgb(var(--paper-rgb) / ${alpha.sidebarText})`,
    '--sidebar-nav': `rgb(var(--paper-rgb) / ${alpha.sidebarNav})`,
    '--main-wash': `rgb(var(--accent-surface-rgb) / ${alpha.mainWash})`,
    '--hover-accent-shadow-start': `0 0 0 0 rgb(var(--accent-rgb) / ${alpha.accentPulse})`,
    '--hover-accent-shadow-end': `0 0 0 ${webLayout.hoverRingSize} rgb(var(--accent-rgb) / ${alpha.transparent})`,
    '--hover-accent-soft-shadow-start': `0 0 0 0 rgb(var(--accent-soft-rgb) / ${alpha.accentSoftPulse})`,
    '--hover-accent-soft-shadow-end': `0 0 0 ${webLayout.hoverRingSize} rgb(var(--accent-soft-rgb) / ${alpha.transparent})`,
    '--shadow': `${webLayout.shellShadow} rgb(var(--ink-rgb) / ${alpha.shellShadow})`,
  }

  const existingStyle = document.getElementById('resume-theme')
  const style =
    existingStyle instanceof HTMLStyleElement ? existingStyle : document.createElement('style')

  style.id = 'resume-theme'
  style.textContent = [
    ':root {',
    ...Object.entries(variables).map(([name, value]) => toCssDeclaration(name, value)),
    '}',
    '',
    '@media print {',
    '  :root {',
    toCssDeclaration('--paper', tokens.surface),
    toCssDeclaration('--shadow', 'none'),
    '  }',
    '}',
  ].join('\n')

  if (!existingStyle) {
    document.head.append(style)
  }
}
