#set document(
  title: "Volodymyr Brodskyi — CV",
  author: "Volodymyr Brodskyi",
)

#set page(
  width: 21cm,
  height: auto,
  margin: (top: 1.6cm, bottom: 1.6cm, left: 1.8cm, right: 1.8cm),
)

#set text(font: "Liberation Sans", size: 9.8pt, fill: rgb("#2b2b2b"))

#let darkblue = rgb("#1a3a5c")
#let midblue = rgb("#3d6a94")
#let lightblue = rgb("#eef3f8")
#let rule_color = rgb("#d6dee6")

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
  #text(size: 12pt, fill: midblue)[Cloud & AI Infrastructure Architect]
  #v(8pt)
  #let icon(name) = box(image("icons/" + name, width: 8.5pt), baseline: 1pt)
  #let item(name, txt) = [#icon(name) #h(3pt) #txt]
  #text(size: 9pt, fill: rgb("#555555"))[
    #item("pin.svg", "Israel")
    #h(8pt)
    #item("phone.svg", "+972 53 373 8036")
    #h(8pt)
    #item("mail.svg", "volodymyr.brodskyi@icloud.com")
    #h(8pt)
    #item("link.svg", "linkedin.com/in/vbrodskyi")
    #h(8pt)
    #item("globe.svg", "hir.1ng.me")
  ]
]

#line(length: 100%, stroke: 1.5pt + darkblue)
#v(4pt)

#section("Summary")
Solution Architect and DevOps engineer with 10+ years building and migrating cloud infrastructure. Deep hands-on experience in AWS, Azure, Kubernetes, and Terraform. Delivered production systems for fintech, genomics, and media companies — from 30PB data pipelines to zero-downtime migrations. Now focused on enterprise AI infrastructure and cloud-native architectures.

#v(6pt)
#block(
  width: 100%,
  fill: lightblue,
  stroke: 1pt + midblue,
  inset: (x: 10pt, y: 7pt),
  radius: 2pt,
)[
  #text(weight: "bold", fill: darkblue, size: 9.5pt)[AI/LLM Infrastructure — ] #text(size: 9.5pt)[Designed and deployed enterprise Anthropic Claude integrations: secure API gateways, IAM roles, audit logging, and usage controls for production LLM workloads.]
]

#v(8pt)
#let highlight(icon_name, stat, caption) = block(
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
    box(image("icons/" + icon_name, width: 15pt)),
    [
      #text(size: 10.5pt, weight: "bold", fill: darkblue)[#stat] \
      #text(size: 7.6pt, fill: rgb("#666666"))[#caption]
    ]
  )
]

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 8pt,
  highlight("stack.svg", "30 PB+", "cross-region data migrated, zero loss"),
  highlight("shield.svg", "~2m40s RTO", "disaster-recovery design, near-zero RPO"),
  highlight("gauge.svg", "~6x throughput", "pipeline re-architected for horizontal scale"),
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

#let job(title, company, dates, subtitle, bullets) = [
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
    "Diagnosed and remediated a major cloud cost incident, tracing runaway spend to orphaned search indexers and zombie containers",
    "Architected a disaster-recovery solution for a mission-critical system, achieving ~2m40s RTO and near-zero RPO",
    "Re-architected a media processing pipeline for horizontal batch scaling, delivering a ~6x throughput improvement",
  )
)

#job(
  "Senior DevOps Engineer", "FILO Systems", "Aug 2023 – Aug 2024",
  "CI/CD, benchmarking, multi-cloud observability",
  (
    "Redesigned GitLab CI/CD pipelines for cross-platform binary builds, cutting build-test cycle times significantly",
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
    "Overhauled monitoring stack (CloudWatch, Splunk, Datadog), reducing noise and improving incident response time",
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
    "Built and led a 24/7 on-call operations team; reduced production incident response time and deployment downtime",
  )
)

#section("Education & Certifications")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 14pt,
  [
    #text(weight: "bold")[Master's Degree, Computer Science] \
    #text(size: 8.8pt, fill: rgb("#666666"))[2020]
  ],
  [
    #text(weight: "bold")[AWS Solutions Architect Associate] \
    #text(size: 8.8pt, fill: rgb("#666666"))[2020]
  ]
)
