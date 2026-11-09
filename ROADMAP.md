# Digital Forensics & Incident Response Mastery — Roadmap

This roadmap is competency-based. Move forward when you can demonstrate the outcome, not merely when you have read the page.

## Stage 0 — Safe lab setup and investigation discipline

- [ ] Understand authorization, scope, privacy, and evidence handling boundaries.
- [ ] Build disposable Linux and Windows virtual machines.
- [ ] Configure an isolated host-only lab network.
- [ ] Learn VM snapshots and safe restoration.
- [ ] Create an investigation journal and evidence register.
- [ ] Understand UTC, local time, clock drift, and timestamp normalization.
- [ ] Learn how to safely store and transfer forensic artifacts.

**Exit criteria:** You can run a repeatable lab, identify its scope, and avoid exposing host or production data.

## Stage 1 — Forensic foundations

- [ ] Define digital forensics, DFIR, incident response, and forensic readiness.
- [ ] Understand identification, preservation, acquisition, examination, analysis, and reporting.
- [ ] Distinguish original evidence, forensic copies, working copies, and derived artifacts.
- [ ] Understand chain of custody and evidence registers.
- [ ] Calculate and verify SHA-256 hashes.
- [ ] Document acquisition method, tool version, timestamps, and limitations.
- [ ] Separate observations, interpretations, assumptions, and conclusions.

**Practice outcome:** Produce a complete evidence register and integrity verification record for a synthetic evidence set.

## Stage 2 — Endpoint and operating-system forensics

- [ ] Linux authentication and system logs.
- [ ] systemd journal and service activity.
- [ ] SSH access and authorized-key investigation.
- [ ] Linux users, processes, cron, services, and persistence artifacts.
- [ ] Windows Event Logs and event channels.
- [ ] Windows Registry artifact fundamentals.
- [ ] PowerShell operational and script-block logging.
- [ ] Sysmon telemetry and process creation analysis.
- [ ] Windows scheduled tasks, services, and startup artifacts.
- [ ] Build a defensible endpoint investigation timeline.

**Practice outcome:** Investigate a synthetic suspicious-login scenario across Linux or Windows and report corroborated findings.

## Stage 3 — Network forensics

- [ ] Understand packet capture scope, filters, and limitations.
- [ ] Analyze PCAPs with Wireshark and command-line tools.
- [ ] Investigate DNS queries and responses.
- [ ] Interpret TCP sessions, ports, and common protocols.
- [ ] Review firewall, proxy, and network flow records.
- [ ] Identify suspicious connections without overclaiming attribution.
- [ ] Correlate network observations with endpoint timestamps.

**Practice outcome:** Produce a network investigation report with a timeline and evidence references.

## Stage 4 — Memory and malware triage

- [ ] Understand volatile evidence and acquisition constraints.
- [ ] Learn Volatility 3 concepts and supported plugin workflows.
- [ ] Review process trees, modules, handles, and network artifacts.
- [ ] Perform safe file triage using metadata and hashes.
- [ ] Understand static versus dynamic malware analysis.
- [ ] Use YARA for controlled detection exercises.
- [ ] Extract and document indicators of compromise.
- [ ] Use isolated, disposable sandboxes for dynamic analysis.
- [ ] Record tool versions, sample provenance, and analysis limitations.

**Practice outcome:** Triage a benign or approved training sample and produce a safe analysis report.

## Stage 5A — Cybersecurity and SOC track

- [ ] Build triage checklists and investigation hypotheses.
- [ ] Map relevant observations to MITRE ATT&CK techniques.
- [ ] Correlate endpoint, identity, and network evidence.
- [ ] Write and test Sigma detection rules against sample logs.
- [ ] Develop threat-hunting queries and document false-positive considerations.
- [ ] Practice incident severity, escalation, containment, and recovery decisions.
- [ ] Conduct a tabletop incident response exercise.

**Portfolio outcome:** A documented multi-source investigation with detection logic and response recommendations.

## Stage 5B — Cloud and platform forensics track

- [ ] Understand cloud logging, retention, regions, and audit limitations.
- [ ] Investigate AWS CloudTrail and IAM activity.
- [ ] Review Azure Activity Logs and Microsoft Entra audit/sign-in records.
- [ ] Review GCP Audit Logs and identity activity.
- [ ] Investigate cloud storage access and configuration changes.
- [ ] Preserve relevant cloud metadata and export records safely.
- [ ] Understand ephemeral workloads and evidence volatility.

**Portfolio outcome:** A synthetic cloud identity compromise investigation with a timeline and evidence register.

## Stage 5C — Container and Kubernetes forensics track

- [ ] Understand container images, layers, runtime state, and logs.
- [ ] Inspect Docker events, metadata, and image provenance.
- [ ] Review Kubernetes audit logs and workload events.
- [ ] Investigate suspicious pods, service accounts, and configuration changes.
- [ ] Correlate cluster, node, container, and cloud control-plane evidence.
- [ ] Document limitations caused by ephemeral workloads and log retention.

**Portfolio outcome:** A Kubernetes workload investigation using a disposable local cluster or synthetic records.

## Stage 5D — DevSecOps and supply-chain forensics track

- [ ] Investigate Git history and repository audit activity.
- [ ] Review GitHub Actions workflow runs and permissions.
- [ ] Investigate exposed secrets using synthetic examples.
- [ ] Review dependency, package, and build artifact provenance.
- [ ] Investigate container registry changes and image digests.
- [ ] Review Infrastructure-as-Code changes and deployment events.
- [ ] Correlate source, build, deploy, and runtime evidence.
- [ ] Write response playbooks for pipeline compromise.

**Portfolio outcome:** A synthetic CI/CD compromise investigation from source commit to deployment.

## Stage 5E — IT Operations and SRE track

- [ ] Investigate service failures using logs and metrics.
- [ ] Review unauthorized or unexpected configuration changes.
- [ ] Correlate change records, deployment events, and system logs.
- [ ] Investigate SSH and privileged access.
- [ ] Build incident timelines for outages and degraded services.
- [ ] Distinguish security incidents from reliability incidents while checking for overlap.
- [ ] Document recovery actions, rollback, and post-incident reviews.

**Portfolio outcome:** A server outage or unauthorized-change investigation with a runbook and postmortem.

## Stage 6 — DFIR automation engineering

- [ ] Build Python file hashing and verification utilities.
- [ ] Build Bash collection helpers for authorized Linux labs.
- [ ] Build PowerShell collection helpers for authorized Windows labs.
- [ ] Parse common log formats and structured JSON.
- [ ] Normalize timestamps and generate timelines.
- [ ] Extract IOCs from synthetic evidence.
- [ ] Generate investigation summaries and evidence manifests.
- [ ] Add unit tests, input validation, error handling, and clear exit codes.
- [ ] Add CI checks for scripts and documentation.

**Practice outcome:** Deliver a tested, read-only-by-default toolkit that records provenance and produces reproducible output.

## Stage 7 — Advanced investigations

- [ ] Ransomware incident reconstruction using safe synthetic artifacts.
- [ ] Credential compromise and identity abuse investigation.
- [ ] Lateral movement timeline reconstruction.
- [ ] Insider-threat investigation with privacy safeguards.
- [ ] Multi-cloud and hybrid environment correlation.
- [ ] Enterprise incident command, evidence coordination, and reporting.
- [ ] Lessons learned and forensic readiness improvements.

**Practice outcome:** Complete a multi-stage investigation with defensible evidence, clear limitations, and prioritized response recommendations.

## Stage 8 — Capstone projects

- [ ] Linux suspicious-login investigation.
- [ ] Windows endpoint compromise investigation.
- [ ] PCAP-based network incident investigation.
- [ ] Cloud IAM compromise investigation.
- [ ] Kubernetes suspicious workload investigation.
- [ ] GitHub Actions / CI-CD compromise investigation.
- [ ] Automated evidence integrity and timeline toolkit.
- [ ] Integrated enterprise DFIR tabletop and final report.

## Completion standard

For each topic, be able to:

1. Explain the concept and why it matters.
2. State scope, authorization, and evidence sources.
3. Perform the procedure in a documented environment.
4. Preserve originals and verify working copies.
5. Record commands, tool versions, timestamps, and outputs.
6. Correlate evidence without overstating conclusions.
7. Identify uncertainty, gaps, and alternative explanations.
8. Recommend proportionate detection, containment, and recovery actions.
9. Clean up the lab and produce a clear report.
