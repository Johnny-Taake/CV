#!/usr/bin/env bash
set -euo pipefail

script_path="$(readlink -f "${BASH_SOURCE[0]}")"
script_dir="$(cd "$(dirname "$script_path")" && pwd)"
html_project_dir="$(cd "$script_dir/.." && pwd)"

input="${1:-$script_dir/Ivan Aleksandrovskii (Backend Developer).typ}"
if [[ "$input" != /* ]]; then
  input="$script_dir/$input"
fi

if [[ "${2:-}" != "" ]]; then
  output="$2"
  if [[ "$output" != /* ]]; then
    output="$script_dir/$output"
  fi
else
  output="${input%.typ}.html"
fi

stem="$(basename "${input%.typ}")"
theme_file="$html_project_dir/src/data/theme.json"
tmp="$(mktemp)"

cleanup() {
  rm -f "$tmp"
}
trap cleanup EXIT

typst compile --root "$html_project_dir" --features html --format html "$input" "$tmp" --pretty

python3 - "$tmp" "$output" "$theme_file" "$stem" <<'PY'
from pathlib import Path
from html import escape
from urllib.parse import quote
import json
import sys

source = Path(sys.argv[1])
target = Path(sys.argv[2])
theme_path = Path(sys.argv[3])
stem = sys.argv[4]

html = source.read_text(encoding="utf-8")
theme = json.loads(theme_path.read_text(encoding="utf-8"))

tokens = theme["tokens"]
typography = theme["typography"]
typst = theme["typst"]

paper = tokens["paper"]
surface = tokens["surface"]
ink = tokens["ink"]
ink_soft = tokens["inkSoft"]
muted = tokens["muted"]
border = tokens["border"]
accent = tokens["accent"]
body_font = typst.get("localBodyFont") or typography["body"]
fallback_body = typography.get("fallbackBody", "Arial")
page_size = typst.get("pageSize", "letter")
page_margin = typst.get("pageMargin", "0.7in")
body_size = typst.get("bodySize", "10pt")

profiles = {
    "Ivan Aleksandrovskii (Backend Developer)": {
        "title": "Ivan Aleksandrovskii - Software Engineer CV",
        "icon": "code",
        "generated_from": "Ivan Aleksandrovskii (Backend Developer).typ",
        "summary_marker": "Backend-focused full-stack developer",
        "contacts": [
            ("Location", "Bangkok, Thailand (UTC+7)", None),
            ("Email", "ivan.aleksandrovskii@gmail.com", "mailto:ivan.aleksandrovskii@gmail.com"),
            ("Telegram", "@Johnny_Taake", "https://t.me/Johnny_Taake"),
            ("Line QR", "line.me/ti/p/IzRK5OQuEO", "https://line.me/ti/p/IzRK5OQuEO"),
            ("LinkedIn", "linkedin.com/in/ivan-alexandrovsky", "https://linkedin.com/in/ivan-alexandrovsky"),
            ("GitHub", "github.com/Johnny-Taake", "https://github.com/Johnny-Taake"),
        ],
    },
    "Ivan Aleksandrovskii (Bartender)": {
        "title": "Ivan Aleksandrovskii - Bartender CV",
        "icon": "bar",
        "generated_from": "Ivan Aleksandrovskii (Bartender).typ",
        "summary_marker": "Hospitality professional with",
        "contacts": [
            ("Location", "Bangkok, Thailand", None),
            ("Email", "ivan.vered@gmail.com", "mailto:ivan.vered@gmail.com"),
            ("Telegram", "@Johnny_Taake", "https://t.me/Johnny_Taake"),
            ("Line QR", "line.me/ti/p/IzRK5OQuEO", "https://line.me/ti/p/IzRK5OQuEO"),
            ("LinkedIn", "linkedin.com/in/ivan-alexandrovsky", "https://linkedin.com/in/ivan-alexandrovsky"),
        ],
    },
}

profile = profiles.get(stem)
if profile is None:
    known = ", ".join(sorted(profiles))
    raise SystemExit(f"Unknown CV profile: {stem}. Known profiles: {known}")

def render_contact(label, value, href):
    label_html = escape(label)
    value_html = escape(value)
    if href:
        value_html = f'<a href="{escape(href, quote=True)}">{value_html}</a>'
    return f"""        <div>
          <dt>{label_html}</dt>
          <dd>{value_html}</dd>
        </div>"""

contact_items = "\n".join(render_contact(*item) for item in profile["contacts"])
contact_html = f"""    <section class="contact-card" aria-label="Contact information">
      <h2>Contact</h2>
      <dl>
{contact_items}
      </dl>
    </section>"""

def favicon_svg(kind):
    if kind == "bar":
        return f"""<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
<rect width="64" height="64" rx="12" fill="{paper}"/>
<path d="M18 13h28l-8 23H26L18 13Z" fill="none" stroke="{accent}" stroke-width="5" stroke-linejoin="round"/>
<path d="M24 23h16M32 36v12M23 51h18" stroke="{accent}" stroke-width="5" stroke-linecap="round"/>
<circle cx="43" cy="16" r="5" fill="{accent}"/>
</svg>"""
    return f"""<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
<rect width="64" height="64" rx="12" fill="{paper}"/>
<path d="M25 20 13 32l12 12M39 20l12 12-12 12" fill="none" stroke="{accent}" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M35 16 29 48" stroke="{ink}" stroke-width="5" stroke-linecap="round"/>
</svg>"""

favicon_href = "data:image/svg+xml," + quote(favicon_svg(profile["icon"]), safe="")

style = f"""    <title>{escape(profile["title"])}</title>
    <link rel="icon" type="image/svg+xml" href="{favicon_href}">
    <style>
      :root {{
        color: {ink};
        background: {ink};
        font-family: "{body_font}", "{fallback_body}", Arial, sans-serif;
        font-size: {body_size};
        line-height: 1.45;
      }}

      * {{
        box-sizing: border-box;
      }}

      body {{
        max-width: 8.5in;
        margin: 0.42in auto;
        padding: {page_margin};
        color: {ink};
        background: {paper};
        border: 1px solid {border};
        border-radius: 6px;
        box-shadow: 0 24px 80px rgb(11 11 15 / 24%);
      }}

      a {{
        color: {accent};
        text-decoration-color: {accent};
        text-underline-offset: 2px;
        transition:
          background-color 0.18s ease,
          color 0.18s ease,
          text-decoration-color 0.18s ease;
      }}

      a:hover {{
        color: {paper};
        background: {accent};
        text-decoration-color: transparent;
      }}

      p {{
        margin: 0 0 0.55em;
      }}

      ul {{
        margin: 0.25em 0 0.75em;
        padding-left: 1.2em;
      }}

      li > p {{
        margin: 0 0 0.2em;
      }}

      body > p:first-of-type {{
        margin-bottom: 0.15em;
        color: {accent};
        font-size: 24pt;
        line-height: 1.05;
        text-align: center;
      }}

      body > p:nth-of-type(2) {{
        text-align: center;
      }}

      body > p:nth-of-type(2) {{
        margin-bottom: 0.38em;
        color: {ink_soft};
      }}

      .lead-summary {{
        margin: 0.75em 0 0.68em;
        padding: 0.12in 0.16in;
        border-left: 3pt solid {accent};
        background: {tokens["accentSurface"]};
        color: {ink_soft};
        font-size: 10.5pt;
        line-height: 1.5;
        text-align: left;
        hyphens: none;
        break-inside: avoid;
      }}

      .contact-card {{
        margin: 0.35em 0 1.05em;
        padding: 0.14in;
        border: 0.5pt solid {border};
        background: {paper};
        break-inside: avoid;
        transition:
          border-color 0.18s ease,
          box-shadow 0.18s ease,
          transform 0.18s ease;
      }}

      .contact-card h2 {{
        margin: 0 0 0.1in;
        color: {accent};
        font-size: 10pt;
        line-height: 1.2;
        letter-spacing: 0.08em;
        text-transform: uppercase;
      }}

      .contact-card:hover {{
        border-color: {accent};
        box-shadow: 0 10px 34px rgb(201 0 43 / 10%);
        transform: translateY(-1px);
      }}

      .contact-card dl {{
        display: grid;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 0.06in 0.22in;
        margin: 0;
      }}

      .contact-card div {{
        display: grid;
        grid-template-columns: 0.82in minmax(0, 1fr);
        gap: 0.08in;
        align-items: baseline;
        min-width: 0;
      }}

      .contact-card dt {{
        color: {muted};
        font-weight: 700;
      }}

      .contact-card dd {{
        margin: 0;
        overflow-wrap: anywhere;
      }}

      p:has(> strong > span[style*="underline"]) {{
        margin-top: 1.2em;
        margin-bottom: 0.55em;
        padding-bottom: 0.16in;
        border-bottom: 0.5pt solid {border};
        color: {accent};
        font-size: 13pt;
        line-height: 1.2;
        text-transform: uppercase;
        transition:
          color 0.18s ease,
          border-color 0.18s ease;
      }}

      p:has(> strong > span[style*="underline"]):hover {{
        border-color: {accent};
      }}

      @media screen and (max-width: 760px) {{
        body {{
          margin: 0;
          border-radius: 0;
          border-inline: 0;
          padding: 0.45in;
        }}

        .contact-card dl {{
          grid-template-columns: 1fr;
        }}
      }}

      @page {{
        size: {page_size};
        margin: {page_margin};
      }}

      @media print {{
        :root,
        body {{
          background: {surface};
        }}

        body {{
          max-width: none;
          margin: 0;
          padding: 0;
          border: 0;
          border-radius: 0;
          box-shadow: none;
        }}

        a {{
          color: {accent};
        }}

        .contact-card {{
          background: {surface};
          transition: none;
          transform: none;
          box-shadow: none;
        }}

        .lead-summary {{
          background: {surface};
        }}
      }}
    </style>"""

if "</head>" not in html:
    raise SystemExit("Cannot inject print CSS: </head> not found")

html = html.replace("  </head>", style + "\n  </head>", 1)

contact_start = html.find("<p>CONTACT")
summary_start = html.find(f"<p>{profile['summary_marker']}")
if contact_start == -1 or summary_start == -1 or summary_start <= contact_start:
    raise SystemExit("Cannot replace contact block in generated HTML")

wrapper_start = html.rfind("<div>", 0, contact_start)
if wrapper_start != -1 and html[wrapper_start:contact_start].strip() == "<div>":
    contact_start = wrapper_start

html = html[:contact_start] + contact_html + "\n" + html[summary_start:]

html = html.replace(
    f"<p>{profile['summary_marker']}",
    f'<p class="lead-summary">{profile["summary_marker"]}',
    1,
)

notice = f"""<!--
Generated from: {profile["generated_from"]}
Command: ./build_typst_print_html.sh
Theme: HTML_Resume/src/data/theme.json
Notes: Typst HTML export is experimental; this wrapper adds browser print CSS from JSON theme tokens.
-->
"""

target.write_text(notice + html, encoding="utf-8")
PY

printf 'Generated %s\n' "$output"
