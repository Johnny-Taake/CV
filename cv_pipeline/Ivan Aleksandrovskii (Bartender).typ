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

- Built and supported a distribution strategy for wholesale operations

- Checked stock levels and demand patterns to keep inventory aligned
  with active sales

- Managed customer relations, active sales, marketing tasks, and quality
  control

- Prepared invoices and maintained an Excel-based cash register

- Used sales data and market research to track performance and spot
  practical improvements

#strong[Opening and Event Bar Manager Mar 2021 -- Sep 2022]

#strong[Ganino Farm Country Club, Saint Petersburg]

Supported bar opening, beverage operations, and event service in a
country club environment.

#emph[Results:]

- Managed bar operations for opening and event formats

- Developed beverage menu ideas and supported cocktail creation

- Trained and coordinated bar staff during service preparation and
  events

- Controlled inventory, compliance, service standards, and guest
  experience

- Coordinated bar workflow with event requirements and customer
  expectations

#strong[Bartender / Evening Shift Manager Feb 2021 -- Sep 2022]

#strong[Kapital Bar, Saint Petersburg]

Worked as a bartender and evening shift manager with responsibility for
cocktails, guest service, orders, and operational discipline.

#emph[Results:]

- Crafted IBA and signature alcoholic cocktails

- Prepared non-alcoholic mixes and coffee after the barista shift

- Worked with wine recommendations and guest navigation through the wine
  offer

- Took orders, calculated bills, managed cash register operations, and
  handled guest requests

- Checked inventory and supported smooth evening shift operations

#strong[Bartender Aug 2019 -- Feb 2021]

#strong[Wine and Water Restaurant, Hotel Indigo 5\*, Saint Petersburg]

Worked across restaurant bar duties, night lobby bar service, and room
service in a five-star hotel setting.

#emph[Results:]

- Prepared alcoholic cocktails, non-alcoholic mixes, wine service, and
  coffee drinks for restaurant guests

- Covered lobby bar night shifts with room service responsibilities

- Took and calculated orders, managed cash register operations, and
  delivered orders to rooms

- Maintained inventory checks and service standards in both restaurant
  and lobby bar formats

#strong[Bartender Sep 2018 -- Jun 2019]

#strong[Sky Bar, Saint Petersburg]

Worked in cocktail service with focus on IBA classics, signature drinks,
non-alcoholic mixes, coffee, and stock checks.

#emph[Results:]

- Crafted alcoholic cocktails and signature drinks

- Prepared non-alcoholic mixes and coffee drinks

- Supported inventory assessments and clean shift handover

#strong[Waiter Apr 2018 -- Jun 2018]

#strong[Hard Rock Cafe, Saint Petersburg]

Joined the floor team around grand opening preparation and the Football
World Championship season.

#emph[Results:]

- Prepared for grand opening service under network standards

- Worked floor service during a high-traffic international event season

- Followed brand service standards and team procedures

#strong[Bartender May 2017 -- Mar 2018]

#strong[Mollie's Pub, Saint Petersburg]

Started in pub bar service with a focus on beer navigation, responsible
service, inventory discipline, and menu knowledge.

#emph[Results:]

- Guided guests through beer selection and menu options

- Served responsibly in a pub environment

- Supported inventory management and daily bar readiness

#strong[#underline[EDUCATION]]

#strong[Saint Petersburg State University of Aerospace Instrumentation
(SUAI), 2022]

#emph[Higher education track,] Radio Engineering, Optical Fiber.

#strong[#underline[ADDITIONAL]]

#strong[Driving:] Driver's license categories A and B

#strong[Personal profile:] Active, disciplined, competitive, and
comfortable with busy service shifts. I enjoy direct guest interaction,
teamwork, precise preparation, and the pace of bar operations.
