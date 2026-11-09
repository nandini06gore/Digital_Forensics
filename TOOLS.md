# Tools and Lab Environment

This is a learning-oriented tool catalogue, not a requirement to install everything at once. Each lab must document the exact tool version and tested environment.

## Core environment

| Area | Suggested tools | Notes |
|---|---|---|
| Linux | Ubuntu Server LTS, Debian | Use a disposable VM. |
| Windows | Windows 11 / Windows Server evaluation VM | Use synthetic event data where possible. |
| Virtualization | VirtualBox, VMware, Hyper-V | Take snapshots before experiments. |
| Version control | Git, GitHub | Never commit secrets or evidence from production. |
| Scripting | Python 3, Bash, PowerShell | Validate inputs and avoid destructive defaults. |
| Time handling | UTC, NTP-aware system clocks | Document timezone and clock assumptions. |

## Evidence and disk forensics

- SHA-256 utilities (`sha256sum`, `Get-FileHash`, Python `hashlib`)
- Autopsy and The Sleuth Kit
- ExifTool for metadata examination
- Plaso / log2timeline where appropriate

## Endpoint and memory forensics

- Windows Event Viewer and Windows Event Log tools
- Sysmon
- Velociraptor
- Volatility 3
- Linux `journalctl`, `auditd`, `last`, `ps`, `ss`, and filesystem metadata tools

## Network forensics

- Wireshark
- tshark
- tcpdump
- Zeek
- Network flow and firewall logs

## Malware triage and detection

- YARA
- Ghidra
- capa
- Sigma
- Isolated sandbox environments

Only use safe training samples or approved samples in isolated, disposable environments. Do not execute unknown files on a daily-use workstation.

## Cloud and platform

- AWS CloudTrail and relevant AWS audit sources
- Azure Activity Logs and Microsoft Entra audit/sign-in logs
- Google Cloud Audit Logs
- Docker and Kubernetes audit/runtime records
- Cloud-native export and retention tooling

## DevSecOps and supply chain

- GitHub audit logs and Actions
- Git and package manager metadata
- Trivy
- Gitleaks
- Syft and Grype
- Terraform and infrastructure-as-code plans

## Installation policy

Each lab must provide its own tested installation steps, version notes, and cleanup instructions. Avoid one giant installation script that changes the learner's entire system. Prefer pinned versions and official vendor documentation.
