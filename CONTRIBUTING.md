# Contributing

Thanks for helping improve Digital Forensics & Incident Response Mastery.

## Contribution principles

- Keep content practical, accurate, reproducible, and legally responsible.
- State the tested OS, tool version, privileges, and lab topology.
- Explain commands; do not provide unexplained command dumps.
- Include evidence provenance, integrity checks, verification, and limitations.
- Separate observed facts from interpretations and assumptions.
- Use synthetic, public training, or explicitly authorized data.
- Never include credentials, private keys, tokens, personal data, customer information, or confidential production evidence.
- Do not include live malware or instructions that expose contributors to unsafe execution.

## Adding a topic or lab

Use `templates/TOPIC-TEMPLATE.md` or `templates/LAB-TEMPLATE.md`. A useful lab includes objective, scope, prerequisites, environment, evidence sources, procedure, verification, findings, limitations, cleanup, and references.

## Adding a script

- Include a clear filename and purpose.
- Add usage instructions and examples.
- Validate inputs and handle errors.
- Avoid hard-coded secrets and destructive defaults.
- Prefer read-only behavior and dry-run modes where practical.
- Do not silently alter evidence or source systems.
- Record hashes and provenance where relevant.
- State dependencies and supported platforms.
- Add tests and test in a disposable environment before submitting.

## Pull request checklist

- [ ] The change fits the repository structure.
- [ ] Commands and scripts were tested in a stated environment.
- [ ] Evidence is synthetic, public training, or authorized and sanitized.
- [ ] Integrity and provenance requirements are addressed.
- [ ] Expected output or verification is included.
- [ ] Limitations and assumptions are documented.
- [ ] Risky operations include warnings and cleanup/rollback.
- [ ] No secrets or sensitive data are included.
- [ ] Links and Markdown render correctly.
