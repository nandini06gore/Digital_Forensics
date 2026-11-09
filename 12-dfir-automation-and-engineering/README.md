# DFIR Automation and Engineering

## Purpose
Build small, auditable helpers that support repeatable forensic workflows.

## Starter utilities
- `python/hash_file.py` — stream a file and calculate SHA-256.
- `bash/hash_file.sh` — use the platform SHA-256 utility.
- `powershell/Get-FileSha256.ps1` — calculate SHA-256 with PowerShell.

## Usage

### Python
```bash
python3 python/hash_file.py ./sample-evidence.txt
```

### Bash
```bash
bash bash/hash_file.sh ./sample-evidence.txt
```

### PowerShell
```powershell
.\powershell\Get-FileSha256.ps1 -Path .\sample-evidence.txt
```

These scripts read the selected file and print its digest. They do not establish chain of custody or prove evidence authenticity by themselves. Record acquisition context, file metadata, collector, timestamps, and storage controls separately.
