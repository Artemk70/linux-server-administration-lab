# Linux Server Administration Lab

## About

This repository documents my hands-on Linux system administration training using Linux Mint and Ubuntu Server.

The goal is to develop practical skills in Linux administration, network troubleshooting, system monitoring, and Bash automation through practical exercises and small projects.

## Environment

- Linux Mint
- Ubuntu Server 24.04 LTS
- Bash
- Git and GitHub
- SSH and SCP
- VirtualBox

## Topics

- Linux filesystem and disk management
- Users, groups, and file permissions
- Processes and systemd services
- Networking and troubleshooting
- System logs and monitoring
- Bash scripting and automation
- SSH and secure file transfer

## Project Structure

```text
linux-server-administration-lab/
├── README.md
├── docs/
├── scripts/
│   └── system-info.sh
├── screenshots/
└── logs/
```

## Implemented

### System Information Script

**File:** `scripts/system-info.sh`

A Bash script that collects basic system information and generates a diagnostic report.

The script reports:

- Hostname
- Operating system
- Kernel version
- System uptime
- Current user
- Root filesystem usage
- Memory and swap usage

#### Usage

Run the script from the repository root:

```bash
./scripts/system-info.sh
```

By default, the report is saved to:

```text
logs/system-report.txt
```

Display the available command-line options:

```bash
./scripts/system-info.sh --help
```

Save the report to a custom file:

```bash
./scripts/system-info.sh --output /tmp/system-report.txt
```

The script supports basic input validation and reports errors for unknown arguments or a missing output path.

The script collects system information and writes a report. It does not intentionally modify system configuration.

## Progress

- [x] Git repository initialized and published to GitHub
- [x] Bash system information script implemented and tested
- [x] Script execution permissions configured
- [x] Diagnostic report generation and file output
- [x] Basic command-line argument handling
- [ ] Linux administration documentation
- [ ] Troubleshooting exercises

## Purpose

This repository is a practical learning project focused on developing Linux administration skills and preparing for entry-level IT infrastructure and DevOps roles.
