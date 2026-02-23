# Plan: Final Polish — Update Content, Fix PDF Name, Clean Up

## Step 1: Remove PDFs, add Print button

PDFs are hard to maintain and look inconsistent. Replace with browser print (Cmd+P / Ctrl+P produces a clean PDF via `@media print` styles).

### Move all PDFs to backup:
```bash
mv 1page_version.pdf backup/
```

### Replace download link in `index.html`:

Change:
```html
<a href="./volodymyr_brodsky_DevOps_1p_cv.pdf">Download PDF</a>
```

To:
```html
<a href="#" onclick="window.print(); return false;">Print / Save PDF</a>
```

### Improve `@media print` in `style.css`:

The current print styles are minimal. Replace the `@media print` block with:

```css
@media print {
  html, body {
    font-size: 11pt !important;
    background: white !important;
    padding: 0 !important;
    margin: 0 !important;
  }

  #wrapper {
    font-size: 1em !important;
    padding: 0 !important;
    margin: 0 !important;
    border: none !important;
    box-shadow: none !important;
    background: white !important;
  }

  #wrapper h1 {
    font-size: 2em !important;
    margin-top: 0 !important;
  }

  #wrapper h2 {
    font-size: 1.4em !important;
    margin-top: 1em !important;
    margin-bottom: 0.4em !important;
  }

  #wrapper h3 {
    font-size: 1.1em !important;
    margin-top: 0.8em !important;
    margin-bottom: 0.3em !important;
  }

  #wrapper ul {
    margin-top: 0.3em !important;
    margin-bottom: 0.3em !important;
  }

  #wrapper li {
    margin-bottom: 0.2em !important;
  }

  #wrapper p {
    margin: 0.4em 0 !important;
  }

  #wrapper hr {
    margin: 0.8em 0 !important;
  }

  #theme-toggle {
    display: none !important;
  }

  a[href]::after {
    content: none !important;
  }

  a {
    color: #333 !important;
    text-decoration: none !important;
  }

  .contact-info a {
    color: #0366d6 !important;
  }
}
```

This ensures:
- Clean white background, no box shadow or border
- Tight spacing that fits on 1 page
- No theme toggle button printed
- Links don't print ugly URLs after them
- Contact links keep color for visibility

## Step 3: Update `1page_version.md` with rebuilt content

Replace entire file with this:

```markdown
# Volodymyr Brodskyi

[LinkedIn](https://www.linkedin.com/in/vbrodskyi/) • +972533738036 • volodymyr.brodskyi@icloud.com

---

## Summary

Infrastructure architect with 20+ years in IT and 10+ specializing in DevOps. I design cloud environments for reliability, automate everything that shouldn't require a human, and lead migrations that others call impossible. From 30PB data operations to fintech platforms built from scratch — I treat infrastructure as a strategic asset, not a cost center.

---

## Skills

- **Cloud**: AWS (12+ yrs), Azure (5+ yrs), GCP (2+ yrs)
- **Containers**: Kubernetes (AKS, EKS, GKE, on-prem), Docker, Podman, LXC/LXD
- **Automation**: Terraform, Ansible, Helm, Packer
- **CI/CD**: GitLab, Azure DevOps, Jenkins, GitHub Actions
- **Databases**: PostgreSQL, MongoDB, Redis, MySQL
- **Messaging**: Kafka, RabbitMQ, NATS
- **Monitoring**: Datadog, Prometheus, Grafana, InfluxDB
- **Other**: Linux, Proxmox, VMware, Bash, Python

---

## Experience

### Solution Architect | [2bcloud](https://2bcloud.io) | Aug 2024 – Present
- Migrated high-load production services from AWS to Azure, redesigning architectures for cloud-native operation.
- Authored Low-Level Designs and Proof-of-Concepts, validated with security and network teams before implementation.
- Delivered Terraform-based infrastructure on Azure DevOps for multiple startup clients — scalable, auditable, production-ready.

### Senior DevOps Engineer | [FILO Systems](https://filo.systems) | Aug 2023 – Aug 2024
- Redesigned GitLab CI/CD pipelines for cross-platform binary builds, cutting build-test cycle times significantly.
- Built benchmarking and observability stack (InfluxDB, Grafana) spanning AWS, GCP, and on-prem bare metal.
- Streamlined R&D data collection workflows, enabling faster performance testing and iteration.

### Senior DevOps Engineer | [C2i Genomics](https://c2i-genomics.com) | Feb 2022 – Jul 2023
- Refactored Azure DevOps pipelines, reducing build and deployment times across the engineering organization.
- Managed ~30PB of cross-region AWS S3 data transfers; designed IAM access control across 30+ AWS accounts.
- Hardened multi-account cloud security posture — governance policies, least-privilege access, audit trails.

### System Engineer Level 3 | [EPAM Systems](https://www.epam.com) | Mar 2019 – Feb 2022
- Overhauled monitoring stack (CloudWatch, Splunk, Datadog), reducing noise and improving incident response time.
- Built production-ready AKS clusters — networking, security policies, and autoscaling from day one.
- Led AWS-to-VCloud migration for production workloads, maintaining HA and regulatory compliance throughout.

### Head of DevOps | [WalletFactory](https://walletfactory.com) | Mar 2018 – Jul 2019
- Architected fintech infrastructure from scratch — QR payments, e-money processing, peer-to-peer transactions across 5 countries.
- Deployed full TICK-stack monitoring (Telegraf, InfluxDB, Chronograf, Kapacitor) for real-time production analytics.
- Built and led a 24/7 on-call operations team; reduced production incident response time and deployment downtime.

### Senior System Administrator | [Oracle](https://www.oracle.com/cx/marketing/) | Jul 2015 – Dec 2017
- Automated global datacenter configurations with Puppet across Oracle Marketing Cloud infrastructure.
- Designed deployment automation that reduced manual intervention and accelerated release cycles.

---

## Education

Master's Degree in Computer Science (2020)

## Certifications

AWS Solutions Architect Associate (2020)
Certified Technical Interviewer (2019)
```

## Step 4: Update `index.html` content inside `<div id="wrapper">`

Replace the CV content HTML to match the updated markdown above. Specific changes:

- **Summary `<p>`**: replace with new text starting "Infrastructure architect with 20+ years..."
- **Skills `<ul>`**: reorder (Containers before Automation), add Packer to Automation
- **2bcloud bullets**: "redesigning architectures for cloud-native operation", "Authored Low-Level Designs...", "Delivered Terraform-based infrastructure..."
- **FILO bullets**: "Redesigned GitLab CI/CD pipelines...", "Built benchmarking and observability stack...", "Streamlined R&D data collection workflows..."
- **C2i bullets**: "reducing build and deployment times across the engineering organization", "Managed ~30PB... designed IAM access control...", "Hardened multi-account cloud security posture..."
- **EPAM bullets**: "Overhauled monitoring stack...", "Built production-ready AKS clusters — networking, security policies, and autoscaling from day one", "Led AWS-to-VCloud migration..."
- **WalletFactory bullets**: "Architected fintech infrastructure from scratch... across 5 countries", "Deployed full TICK-stack monitoring...", "Built and led a 24/7 on-call operations team..."
- **Oracle**: reduce to 2 bullets: "Automated global datacenter configurations...", "Designed deployment automation..."
- **Education section**: split into two `<h2>` sections — "Education" (one item) and "Certifications" (two items)

## Step 5: Update `volodymyr_brodskyi_CV.md` (3-page version)

Apply the same language improvements:
- New Summary text (same as 1-page)
- Same rewritten bullets for matching sections
- Keep additional 3-page detail (project descriptions, customer lists, key contributions format)
- Split Education / Certifications

## Step 6: Commit and push

```bash
git add -A
git commit -m "Rebuild CV content, replace PDF with print button, improve print styles"
git push origin main
```

After done, move this file to backup:
```bash
mv PLAN-final-polish.md backup/
git add -A && git commit -m "Archive completed plan" && git push
```

## Validation

1. No PDF files in root (all moved to backup)
2. "Print / Save PDF" link in `index.html` calls `window.print()`
3. Cmd+P / Ctrl+P produces a clean 1-page PDF (test in Chrome)
4. Print output: white background, no toggle button, no box shadow, tight spacing
5. Content in `index.html` matches `1page_version.md`
6. Dark mode still works on screen
7. Push → verify hir.1ng.me renders updated content and print works
