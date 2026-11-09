# Digital Forensics & Incident Response Mastery

> A hands-on, professional learning repository for digital forensics, incident response, cybersecurity, DevSecOps, cloud security, and IT operations.

**Repository:** `digital-forensics-lab`  
**Level:** Beginner foundations through advanced professional practice  
**Approach:** Hands-on labs, repeatable investigation procedures, evidence handling, scripts, detection engineering, and real-world-inspired case studies

## Mission

Build practical digital forensics and incident response skills that transfer to real environments: understand forensic principles, acquire and preserve evidence, investigate endpoints and networks, analyze cloud and container activity, automate repeatable workflows, and support secure operations.

This repository is organized around a **shared DFIR foundation** followed by four specialist tracks:

1. **Cybersecurity & SOC** — endpoint, network, memory, malware triage, threat hunting, detection, and incident response.
2. **DevSecOps** — source control, CI/CD, secrets, dependencies, build artifacts, containers, and software supply-chain investigations.
3. **Cloud & Platform Security** — cloud audit trails, identity activity, storage, Kubernetes, and workload investigations.
4. **IT Operations & SRE** — Linux and Windows server investigations, unauthorized changes, service failures, timelines, recovery, and post-incident learning.

## Learning path

```text
Forensic principles + safe lab setup
                 |
       Evidence handling + integrity
                 |
 Endpoint + network + log investigation
                 |
 Memory + malware + timeline analysis
                 |
       +----------------+----------------+----------------+
       |                |                |                |
 Cybersecurity       DevSecOps      Cloud/Platform    IT Operations
       |                |                |                |
       +----------------+----------------+----------------+
                        |
             Automation + detection engineering
                        |
              Integrated DFIR capstone projects
```

## Repository map

| Path | What you'll learn |
|---|---|
| `00-dfir-foundations/` | Forensic principles, lifecycle, evidence, chain of custody, legal and ethical boundaries |
| `01-evidence-acquisition-and-integrity/` | Acquisition planning, write protection concepts, hashing, verification, evidence registers |
| `02-linux-forensics/` | Authentication, journal, SSH, processes, filesystem artifacts, persistence |
| `03-windows-forensics/` | Event logs, registry, PowerShell, Sysmon, scheduled tasks, Windows artifacts |
| `04-network-forensics/` | PCAP, Wireshark, DNS, firewall, proxy, flow and network timelines |
| `05-memory-forensics/` | Memory acquisition concepts, Volatility 3, processes, modules, network artifacts |
| `06-malware-triage-and-analysis/` | Safe triage, static and dynamic analysis, YARA, IOCs, sandbox practices |
| `07-cloud-forensics/` | AWS, Azure, GCP audit trails, IAM, storage, cloud incident response |
| `08-container-and-kubernetes-forensics/` | Docker, images, runtime events, Kubernetes audit logs and workload investigation |
| `09-devsecops-and-supply-chain-forensics/` | GitHub Actions, CI/CD, secrets, dependencies, artifacts, registries, IaC |
| `10-it-operations-and-sre-investigations/` | Server changes, outages, service health, access, logs, recovery and postmortems |
| `11-detection-hunting-and-response/` | Sigma, YARA, ATT&CK mapping, threat hunting, triage and response playbooks |
| `12-dfir-automation-and-engineering/` | Python, Bash, PowerShell, parsers, hashing, timelines and reports |
| `13-advanced-case-studies/` | Ransomware, credential compromise, lateral movement, insider threat, enterprise investigations |
| `14-capstone-projects/` | End-to-end investigations and portfolio projects |

See [ROADMAP.md](ROADMAP.md) for staged progression, [LAB-INDEX.md](LAB-INDEX.md) for the practical lab catalogue, and [TOOLS.md](TOOLS.md) for suggested tools.

## Investigation and lab format

Every substantial topic or lab should use a consistent structure:

1. **Objective** — measurable investigation outcome.
2. **Scenario** — what is known, suspected, and in scope.
3. **Environment** — OS, version, tools, permissions, and topology.
4. **Evidence** — source, acquisition method, timestamps, and limitations.
5. **Integrity** — cryptographic hashes and evidence register entries.
6. **Procedure** — numbered, reproducible examination steps.
7. **Analysis** — observations, hypotheses, and corroboration.
8. **Timeline** — normalized timestamps and timezone assumptions.
9. **Findings** — facts separated from interpretations and assumptions.
10. **Detection / response** — prevention, containment, recovery, and lessons.
11. **Cleanup** — restore or dispose of lab resources safely.
12. **References** — authoritative documentation and tool versions.

Use the templates in `templates/` when adding content.

## Recommended lab environment

Start with synthetic datasets and disposable virtual machines. Do not begin by collecting data from production systems.

- **Linux:** Ubuntu Server LTS or Debian.
- **Windows:** Windows 11 or Windows Server evaluation VM; use Sysmon where appropriate.
- **Network:** isolated host-only virtual network with synthetic PCAPs.
- **Forensic workstation:** dedicated VM or disposable analysis environment.
- **Virtualization:** VirtualBox, VMware, Hyper-V, or another supported hypervisor.
- **Version control:** Git and GitHub.
- **Optional later tools:** Autopsy, Sleuth Kit, Volatility 3, Wireshark, Zeek, Velociraptor, YARA, Sigma, Docker, Kubernetes, and cloud audit tooling.

Record exact OS and tool versions in each lab. Tool capabilities, commands, and artifact locations can vary by version.

## Evidence integrity and responsible use

- Practice only on systems and data you own or are explicitly authorized to examine.
- Preserve original evidence; analyze verified working copies whenever possible.
- Record who collected evidence, when, from where, how, and with which tool/version.
- Calculate and verify SHA-256 hashes; hashing supports integrity checks but does not by itself prove authenticity or completeness.
- Preserve original timestamps and document timezone assumptions.
- Keep a chain-of-custody record for evidence transfers and access.
- Use synthetic, public training, or properly sanitized datasets.
- Never commit credentials, private keys, API tokens, personal data, customer data, or confidential production logs.
- Do not execute malware on production systems. Use isolated, disposable analysis environments and safe samples.
- Do not alter, delete, isolate, or remediate production systems unless authorized by the incident commander and applicable procedures.
- Follow applicable laws, organizational policy, privacy requirements, and responsible disclosure practices.

## How to use this repository

1. Start with `00-dfir-foundations/`.
2. Complete evidence acquisition and integrity before advanced analysis.
3. Work through endpoint and network modules using synthetic evidence.
4. Perform the labs; do not only read the notes.
5. Keep an investigation journal with date, environment, evidence IDs, commands, output, and conclusions.
6. Choose one or more specialist tracks.
7. Complete the capstone projects and publish sanitized reports.

## Contribution workflow

Contributions are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md), use the templates, test procedures in a disposable environment, and submit a pull request with clear verification steps.

## Progress tracking

Use [ROADMAP.md](ROADMAP.md) and [LAB-INDEX.md](LAB-INDEX.md). A topic is complete when you can explain the method, perform it independently, validate evidence integrity, distinguish facts from assumptions, document limitations, and communicate findings clearly.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE).
