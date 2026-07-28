#set document(
  title: "Volodymyr Brodskyi — CV",
  author: "Volodymyr Brodskyi",
)

#set page(
  paper: "a4",
  margin: (top: 1.6cm, bottom: 1.6cm, left: 1.8cm, right: 1.8cm),
)

#set text(font: ("Inter", "Helvetica Neue", "Helvetica", "Arial", "Liberation Sans", "DejaVu Sans"), size: 9.5pt, fill: rgb("#2b2b2b"))

#let darkblue = rgb("#1a3a5c")
#let midblue = rgb("#3d6a94")
#let lightblue = rgb("#eef3f8")
#let rule_color = rgb("#d6dee6")

// Embedded icons (self-contained, no external files needed)
#let svg_pin = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#3d6a94' d='M12 2C8.14 2 5 5.14 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.86-3.14-7-7-7zm0 9.5A2.5 2.5 0 1 1 12 6.5a2.5 2.5 0 0 1 0 5z'/></svg>"
#let svg_phone = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#3d6a94' d='M6.62 10.79a15.05 15.05 0 0 0 6.59 6.59l2.2-2.2a1 1 0 0 1 1.02-.24c1.12.37 2.33.57 3.57.57a1 1 0 0 1 1 1V20a1 1 0 0 1-1 1C10.61 21 3 13.39 3 4a1 1 0 0 1 1-1h3.5a1 1 0 0 1 1 1c0 1.24.2 2.45.57 3.57a1 1 0 0 1-.25 1.02l-2.2 2.2z'/></svg>"
#let svg_mail = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#3d6a94' d='M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4-8 5-8-5V6l8 5 8-5v2z'/></svg>"
#let svg_link = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#3d6a94' d='M3.9 12a4.1 4.1 0 0 1 4.1-4.1h4V6.2H8a5.8 5.8 0 1 0 0 11.6h4v-1.7H8A4.1 4.1 0 0 1 3.9 12zM9 13h6v-2H9v2zm7-7h-4v1.7h4a4.1 4.1 0 1 1 0 8.2h-4V17h4a5.8 5.8 0 1 0 0-11.6z'/></svg>"
#let svg_globe = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#3d6a94' d='M12 2a10 10 0 1 0 0 20 10 10 0 0 0 0-20zm6.93 6H15.7a15.6 15.6 0 0 0-1.38-3.56A8.03 8.03 0 0 1 18.93 8zM12 4.04c.83 1.2 1.48 2.53 1.91 3.96h-3.82c.43-1.43 1.08-2.76 1.91-3.96zM4.26 14A7.97 7.97 0 0 1 4 12c0-.69.1-1.36.26-2h3.38a16.6 16.6 0 0 0 0 4H4.26zm.81 2h3.25c.32 1.25.78 2.45 1.38 3.56A8.03 8.03 0 0 1 5.07 16zm3.25-8H5.07a8.03 8.03 0 0 1 4.63-3.56A15.6 15.6 0 0 0 8.32 8zM12 19.96a15.6 15.6 0 0 1-1.91-3.96h3.82c-.43 1.43-1.08 2.76-1.91 3.96zM14.34 14H9.66a14.5 14.5 0 0 1 0-4h4.68a14.5 14.5 0 0 1 0 4zm.02 5.56A15.6 15.6 0 0 0 15.74 16h3.19a8.03 8.03 0 0 1-4.57 3.56zM16.36 14a16.6 16.6 0 0 0 0-4h3.38c.16.64.26 1.31.26 2s-.1 1.36-.26 2h-3.38z'/></svg>"
#let svg_stack = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#1a3a5c' d='M12 2C7.58 2 4 3.35 4 5v14c0 1.65 3.58 3 8 3s8-1.35 8-3V5c0-1.65-3.58-3-8-3zm0 2c3.87 0 6 1.07 6 1.5S15.87 7 12 7 6 5.93 6 5.5 8.13 4 12 4zM6 8.66C7.34 9.44 9.5 10 12 10s4.66-.56 6-1.34v3.02C16.66 12.44 14.5 13 12 13s-4.66-.56-6-1.32V8.66zm0 4.68C7.34 14.12 9.5 14.68 12 14.68s4.66-.56 6-1.34v3.02C16.66 17.12 14.5 17.68 12 17.68s-4.66-.56-6-1.32V13.34zM12 20c-3.87 0-6-1.07-6-1.5v-1.16C7.34 18.12 9.5 18.68 12 18.68s4.66-.56 6-1.34V18.5c0 .43-2.13 1.5-6 1.5z'/></svg>"
#let svg_shield = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#1a3a5c' d='M12 2 4 5v6c0 5.25 3.4 9.74 8 11 4.6-1.26 8-5.75 8-11V5l-8-3zm-1.2 13.5-3.3-3.3 1.4-1.4 1.9 1.9 4.6-4.6 1.4 1.4-6 6z'/></svg>"
#let svg_gauge = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><path fill='#1a3a5c' d='M12 2a10 10 0 0 0-10 10c0 3.19 1.53 6.02 3.88 7.81.35.27.85.19 1.11-.16a.79.79 0 0 0-.16-1.11A8.5 8.5 0 0 1 3.5 12a8.5 8.5 0 1 1 15.44 4.9c-.27.35-.2.85.15 1.11.35.27.85.19 1.11-.16A10 10 0 0 0 12 2zm.5 5a1 1 0 0 0-1 1v.09l-3.3 4.95a1.5 1.5 0 1 0 1.25.83L12.8 9.1A1 1 0 0 0 12.5 7z'/></svg>"

#let svg_icon(data, w) = box(image(bytes(data), format: "svg", width: w))

#let section(title) = [
  #v(10pt)
  #block(
    width: 100%,
    below: 6pt,
    stroke: (bottom: 1.2pt + darkblue),
    inset: (bottom: 3pt),
  )[
    #text(size: 11pt, weight: "bold", fill: darkblue, tracking: 0.5pt)[#upper(title)]
  ]
]

// Header
#block[
  #text(size: 22pt, weight: "bold", fill: darkblue)[Volodymyr Brodskyi]
  #v(2pt)
  #text(size: 12pt, fill: midblue)[Cloud Solution Architect | AI Infrastructure | Platform Engineering]
  #v(8pt)
  #let icon(data) = box(svg_icon(data, 8.5pt), baseline: 1pt)
  #let item(data, txt) = [#icon(data) #h(3pt) #txt]
  #text(size: 9pt, fill: rgb("#555555"))[
    #item(svg_pin, "Israel")
    #h(8pt)
    #item(svg_phone, "+972 53 373 8036")
    #h(8pt)
    #item(svg_mail, "volodymyr.brodskyi@icloud.com")
    #h(8pt)
    #item(svg_link, "linkedin.com/in/vbrodskyi")
    #h(8pt)
    #item(svg_globe, "hir.1ng.me")
  ]
]

#line(length: 100%, stroke: 1.5pt + darkblue)
#v(4pt)

#section("Summary")
Cloud Solution Architect and platform engineer with 8+ years building and migrating production infrastructure. Deep hands-on experience in AWS, Azure, Kubernetes, and Terraform. Delivered systems for fintech, genomics, and media companies — from 30PB data pipelines to zero-downtime migrations. Focused on enterprise AI infrastructure, cloud-native platforms, and reliable migration programs.

#v(6pt)
#block(
  width: 100%,
  fill: lightblue,
  stroke: 1pt + midblue,
  inset: (x: 10pt, y: 7pt),
  radius: 2pt,
)[
  #text(weight: "bold", fill: darkblue, size: 9.5pt)[AI/LLM Infrastructure — ] #text(size: 9.5pt)[Built governed Anthropic Claude access for enterprise teams: secure API gateways, least-privilege IAM, audit trails, usage controls, and cost guardrails — enabling safe, production-grade LLM adoption across engineering teams.]
]

#v(8pt)
#let highlight(icon_data, stat, caption) = block(
  width: 100%,
  fill: white,
  stroke: 1pt + rule_color,
  inset: (x: 9pt, y: 8pt),
  radius: 2pt,
)[
  #grid(
    columns: (16pt, 1fr),
    column-gutter: 7pt,
    align: horizon,
    svg_icon(icon_data, 15pt),
    [
      #text(size: 10.5pt, weight: "bold", fill: darkblue)[#stat] \
      #text(size: 7.6pt, fill: rgb("#666666"))[#caption]
    ]
  )
]

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 8pt,
  highlight(svg_stack, "30 PB+", "cross-region data migrated, zero loss"),
  highlight(svg_shield, "~2m40s RTO", "disaster-recovery design, near-zero RPO"),
  highlight(svg_gauge, "~6x throughput", "pipeline re-architected for horizontal scale"),
)

#section("Skills")
#let skillrow(k, v) = [
  #grid(
    columns: (3.1cm, 1fr),
    column-gutter: 8pt,
    row-gutter: 5pt,
    text(weight: "bold", fill: darkblue)[#k], text()[#v]
  )
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 18pt,
  row-gutter: 6pt,
  [
    #skillrow("Cloud:", "AWS (12+ yrs), Azure (5+ yrs), GCP (2+ yrs)")
    #skillrow("Kubernetes:", "AKS, EKS, GKE, on-premises (3+ yrs)")
    #skillrow("Databases:", "PostgreSQL (6+ yrs), MongoDB, Redis, MySQL")
    #skillrow("Messaging:", "Kafka, RabbitMQ, NATS")
    #skillrow("Languages:", "Bash, Python")
  ],
  [
    #skillrow("IaC & Automation:", "Terraform, Pulumi, Ansible, Helm, Packer")
    #skillrow("CI/CD:", "GitLab CI, Azure DevOps, Jenkins, GitHub Actions")
    #skillrow("Observability:", "Datadog, Prometheus, Grafana, InfluxDB")
    #skillrow("On-prem / Virt:", "Proxmox, VMware, LXC/LXD, Linux")
  ]
)

#section("Experience")

#let job(title, company, dates, subtitle, bullets) = block(breakable: false)[
  #v(4pt)
  #grid(
    columns: (1fr, auto),
    text(size: 10.3pt, weight: "bold")[#title #h(4pt) — #h(4pt) #company],
    text(size: 9pt, fill: rgb("#666666"))[#dates]
  )
  #text(size: 8.8pt, style: "italic", fill: midblue)[#subtitle]
  #v(3pt)
  #for b in bullets [
    #grid(columns: (10pt, 1fr), text(fill: darkblue)[▸], text()[#b])
    #v(2pt)
  ]
]

#job(
  "Solution Architect", "2bcloud", "Aug 2024 – Present",
  "Cloud migrations, enterprise AI infrastructure, Azure/AWS",
  (
    "Migrated high-load production services from AWS to Azure, rebuilding architectures around containerized, cloud-native workloads",
    "Diagnosed and remediated a major cloud cost incident, tracing runaway spend to orphaned search indexers and unused container workloads",
    "Architected a disaster-recovery solution for a mission-critical system, achieving ~2m40s RTO and near-zero RPO",
    "Re-architected a media processing pipeline for horizontal batch scaling, delivering a ~6x throughput improvement",
  )
)

#job(
  "Senior DevOps Engineer", "FILO Systems", "Aug 2023 – Aug 2024",
  "CI/CD, benchmarking, multi-cloud observability",
  (
    "Redesigned GitLab CI/CD pipelines for cross-platform binary builds, replacing manual release steps with repeatable build-test flows that cut cycle times",
    "Built benchmarking and observability stack (InfluxDB, Grafana) spanning AWS, GCP, and on-prem bare metal",
    "Streamlined R&D data collection workflows, enabling faster performance testing and iteration",
  )
)

#job(
  "Senior DevOps Engineer", "C2i Genomics", "Feb 2022 – Jul 2023",
  "Multi-account AWS, data pipelines, security hardening",
  (
    "Refactored Azure DevOps pipelines, reducing build and deployment times across the engineering organization",
    "Managed ~30PB of cross-region AWS S3 data transfers; designed IAM access control across 30+ AWS accounts",
    "Hardened multi-account cloud security posture — governance policies, least-privilege access, audit trails",
  )
)

#job(
  "System Engineer L3", "EPAM Systems", "Mar 2019 – Feb 2022",
  "Multi-client: DealHub, Refinitiv, AOS, Esports — AKS, monitoring, CI/CD",
  (
    "Overhauled monitoring stack (CloudWatch, Splunk, Datadog), consolidating duplicate alerts and cutting incident response time",
    "Built production-ready AKS clusters — networking, security policies, and autoscaling from day one",
    "Led AWS-to-VCloud migration for production fintech workloads with no unplanned downtime and full regulatory compliance",
  )
)

#job(
  "Head of DevOps", "WalletFactory", "Mar 2018 – Jul 2019",
  "Fintech infrastructure from scratch, 5 countries, team leadership",
  (
    "Architected fintech infrastructure from scratch using Terraform and Ansible — QR payments, e-money, P2P transactions across 5 countries",
    "Deployed full TICK-stack monitoring (Telegraf, InfluxDB, Chronograf, Kapacitor) for real-time production analytics",
    "Built and led a 24/7 on-call operations team, introducing release discipline, escalation paths, and production runbooks that cut incident response time and deployment downtime",
  )
)

#section("Education")

#text(weight: "bold")[Master's Degree, Computer Science] \
#text(size: 8.8pt, fill: rgb("#666666"))[2020]
