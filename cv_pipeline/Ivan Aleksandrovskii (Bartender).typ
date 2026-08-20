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
#strong[Bartender / Bar Manager / HoReCa Operations]

#block(
  width: 100%,
  inset: 0.14in,
  stroke: 0.5pt + border,
  radius: 0pt,
)[
  #text(fill: accent, weight: "bold")[CONTACT]

  #v(0.06in)

  #strong[Location:] Bangkok, Thailand \
  #strong[Email:] #link("mailto:ivan.vered@gmail.com")[ivan.vered\@gmail.com] \
  #strong[Telegram:] #link("https://t.me/Johnny_Taake")[\@Johnny\_Taake] \
  #strong[Line QR:] #link("https://line.me/ti/p/IzRK5OQuEO")[line.me/ti/p/IzRK5OQuEO] \
  #strong[LinkedIn:] #link("https://linkedin.com/in/ivan-alexandrovsky")[linkedin.com/in/ivan-alexandrovsky]
]

Hospitality professional with 5+ years of bar, restaurant, hotel lobby
bar, event bar, and beverage operations experience in Saint Petersburg
and Thailand. My background covers guest-facing cocktail service, wine
guidance, food menu sales, opening operations, inventory control, staff
coordination, supplier communication, active sales, and cash/register
discipline.

I work well in high-volume service environments where speed, clean
standards, guest attention, and team coordination matter. I can run a
bar shift hands-on, support menu and cocktail development, sell dishes
through confident menu knowledge, guide guests through wines, train
staff, control stock, and keep operations structured during busy service
or events.

#strong[Core hospitality stack:] Classic and signature cocktails · IBA
recipes · non-alcoholic mixes · wine navigation · food menu sales · beer
service · coffee preparation · lobby bar and room service · event bars ·
inventory · cash register · supplier communication · active sales ·
staff training

=== #strong[#underline[HOSPITALITY STACK]]
<hospitality-stack>
#strong[Bar Service:] Alcoholic cocktails · signature cocktails ·
non-alcoholic mixes · wine guidance · food menu sales · beer navigation
· responsible service · menu knowledge · order taking · guest
communication

#strong[Beverage Knowledge:] IBA cocktails · Russian wine market · basic
coffee preparation · lobby bar service · room service drinks

#strong[Operations:] Opening preparation · shift coordination · cash
register management · order calculation · inventory checks · stock and
demand control · quality control

#strong[Management:] Evening shift management · event bar management ·
staff training · customer relationship management · active sales ·
supplier and client communication

#strong[Business Tools:] Excel-based cash register · invoice preparation
· sales tracking · market research · basic data analysis

#strong[Languages:] Russian native · English C1 advanced · German A1
basic · Thai learning

#strong[#underline[WORK EXPERIENCE]]

#strong[Wholesale Manager Oct 2022 -- Sep 2023]

#strong[Phuket Distribution Team, Thailand]

Worked in distribution operations after relocating to Thailand, combining
sales, stock control, customer relations, and financial tracking.

#emph[Results:]

- Helped turn a young wholesale operation into a more structured sales
  and stock routine after relocation to Thailand

- Kept stock decisions connected to real demand, reducing guesswork
  around what needed to move, reorder, or promote

- Supported repeat customer relationships by combining direct sales,
  follow-up, product availability, and basic quality control

- Made daily money and paperwork easier to track through Excel cash
  register routines and invoice preparation

- Turned market checks and sales data into practical priorities for
  outreach, stock focus, and product positioning

#strong[Opening and Event Bar Manager Mar 2021 -- Sep 2022]

#strong[Ganino Farm Country Club, Saint Petersburg]

Supported bar opening, beverage operations, and event service in a
country club environment.

#emph[Results:]

- Helped prepare the bar for opening and event service, turning a setup
  phase into working shift routines

- Shaped beverage and cocktail ideas that could work in a country club
  setting rather than only in a classic city bar format

- Made event shifts more predictable by aligning staff preparation,
  stock readiness, and service responsibilities before guests arrived

- Protected guest experience during events by keeping inventory,
  standards, compliance, and service timing under control

- Connected bar workflow with event requirements, so the bar supported
  the whole event instead of becoming a bottleneck

#strong[Bartender / Evening Shift Manager Feb 2021 -- Sep 2022]

#strong[Kapital Bar, Saint Petersburg]

Worked as a bartender and evening shift manager with responsibility for
cocktails, guest service, orders, and operational discipline.

#emph[Results:]

- Kept evening bar service stable while covering both bartender and
  shift-lead responsibilities

- Expanded late-shift service coverage by handling cocktails,
  non-alcoholic drinks, wine guidance, and coffee after the barista shift

- Helped guests choose confidently from cocktails, wine, and food pairings,
  supporting smoother orders and better check quality

- Reduced friction at closing and handover by keeping orders, bills,
  cash register work, requests, and stock checks organized

- Became a reliable person for evening pressure: guest requests, service
  rhythm, operational details, and calm problem solving

#strong[Bartender Aug 2019 -- Feb 2021]

#strong[Wine and Water Restaurant, Hotel Indigo 5\*, Saint Petersburg]

Worked mainly through day, evening, and early-night peak service in a
five-star hotel restaurant bar. During the COVID crisis, also stepped in
for night lobby bar coverage, room service, and banquet preparation when
the employer needed flexible support.

#emph[Results:]

- Maintained five-star service consistency during the busiest day,
  evening, and early-night restaurant bar hours

- Took on night lobby bar and room-service coverage when needed, without
  losing order accuracy, tone, or hotel service standards

- Supported guest spend and satisfaction through confident wine,
  cocktail, coffee, and food-adjacent drink guidance

- Supported banquet preparation during the COVID crisis, helping the
  hotel cover changing service formats with limited resources

- Balanced cash/register discipline, room delivery details, and inventory
  checks while moving between restaurant, lobby, and event support tasks

- Adapted between peak restaurant service and quieter lobby/room-service
  interactions without changing the standard of attention

#strong[Bartender Sep 2018 -- Jun 2019]

#strong[Sky Bar, Saint Petersburg]

Worked in cocktail service with focus on IBA classics, signature drinks,
non-alcoholic mixes, coffee, and stock checks.

#emph[Results:]

- Built speed and consistency with IBA classics, signature drinks, and
  non-alcoholic orders in a focused cocktail-bar environment

- Kept drink quality steady across different order types instead of
  treating coffee or non-alcoholic drinks as secondary service

- Supported cleaner shift handovers by keeping stock awareness and bar
  readiness visible at the end of service

#strong[Waiter Apr 2018 -- Jun 2018]

#strong[Hard Rock Cafe, Saint Petersburg]

Joined the floor team around grand opening preparation and the Football
World Championship season.

#emph[Results:]

- Adapted quickly to international brand standards during grand opening
  preparation

- Handled floor service through a high-traffic World Championship season
  with many international guests and fast table turnover

- Learned how structured service procedures keep a large venue consistent
  even when traffic and guest expectations spike

#strong[Bartender May 2017 -- Mar 2018]

#strong[Mollie's Pub, Saint Petersburg]

Started in pub bar service with a focus on beer navigation, responsible
service, inventory discipline, and menu knowledge.

#emph[Results:]

- Built the foundation of guest-facing bar work through beer guidance,
  responsible service, and menu confidence

- Developed calm bar communication with regular guests and pub traffic

- Learned daily bar readiness discipline: stock visibility, clean setup,
  handover habits, and reliable shift presence

#strong[#underline[EDUCATION]]

#strong[Saint Petersburg State University of Aerospace Instrumentation
(SUAI), 2022]

#emph[Higher education track,] Radio Engineering, Optical Fiber.

#strong[#underline[ADDITIONAL]]

#strong[Driving:] Driver's license categories A and B

#strong[Personal profile:] Active, disciplined, competitive, and
comfortable with busy service shifts. I enjoy direct guest interaction,
teamwork, precise preparation, and the pace of bar operations.
