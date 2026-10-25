# Linux Server Administration Lab

A hands-on learning project focused on Linux system administration, troubleshooting, and Bash automation.

The repository documents practical exercises and small projects completed while building foundational skills for entry-level IT infrastructure and DevOps roles.

## Project Goals

- Practice Linux system administration in a virtual lab.
- Develop Bash scripting and command-line skills.
- Learn to collect and interpret basic system diagnostics.
- Practice Git version control and maintain a public project on GitHub.
- Build a foundation for further work with networking, monitoring, and automation.

## Lab Environment

- **Host OS:** Linux Mint
- **Server OS:** Ubuntu Server 24.04 LTS
- **Virtualization:** VirtualBox
- **Scripting:** Bash
- **Version control:** Git and GitHub
- **Remote administration:** SSH and SCP

## Repository Structure

```text
linux-server-administration-lab/
├── README.md
├── docs/
├── scripts/
│   └── system-info.sh
├── screenshots/
└── logs/
```

- `scripts/` — Bash scripts for administration and diagnostics.
- `docs/` — documentation and practical notes.
- `screenshots/` — screenshots documenting lab work.
- `logs/` — generated diagnostic reports.

## Implemented

### System Information Script

**File:** `scripts/system-info.sh`

A Bash script that collects basic system information and generates a diagnostic report.

The report includes:

- Hostname
- Operating system
- Kernel version
- System uptime
- Current user
- Root filesystem usage
- Memory and swap usage

#### Usage

Run from the repository root:

```bash
./scripts/system-info.sh
```

By default, the report is saved to:

```text
logs/system-report.txt
```

Display command-line help:

```bash
./scripts/system-info.sh --help
```

Save the report to a custom path:

```bash
./scripts/system-info.sh --output /tmp/system-report.txt
```

#### Validation and Error Handling

The script includes basic command-line argument validation. It reports errors for unknown options, a missing output path, and an output directory that does not exist.

It also uses a temporary file when generating a report before replacing the destination file. This helps avoid leaving a partially written report if report generation fails.

The script collects diagnostic information and writes a report; it is not designed to modify system configuration.

#### Basic Checks

Check Bash syntax:

```bash
bash -n scripts/system-info.sh
```

Run the script's help option:

```bash
./scripts/system-info.sh --help
```

Generate a report at a custom path:

```bash
./scripts/system-info.sh --output /tmp/system-report.txt
```

Inspect the generated report:

```bash
cat /tmp/system-report.txt
```

## Progress

- [x] Initialized a Git repository and published it to GitHub.
- [x] Created and tested a Bash system information script.
- [x] Configured script execution permissions.
- [x] Implemented diagnostic report generation and custom output paths.
- [x] Added basic command-line argument validation.
- [x] Added temporary-file handling for report generation.
- [ ] Expand Linux administration documentation.
- [ ] Add practical troubleshooting exercises.
- [ ] Add further scripts for system administration and diagnostics.

## Next Steps

Planned areas of study and development include:

- Linux users, groups, and permissions
- Processes and systemd services
- Disk and filesystem administration
- Network troubleshooting
- System logs and monitoring
- Additional Bash automation

## Purpose

This repository is an ongoing practical learning project. It demonstrates my progress in Linux administration, Bash scripting, troubleshooting, and Git-based development as I prepare for entry-level IT infrastructure and DevOps opportunities.

The project will evolve as new skills are learned and tested in the lab.
