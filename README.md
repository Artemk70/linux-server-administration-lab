# Linux Server Administration Lab

## About

This project documents my practical Linux system administration training using Linux Mint and Ubuntu Server.

The goal is to develop practical skills in Linux administration, network troubleshooting, system monitoring, and Bash automation.

## Environment

- Linux Mint
- Ubuntu Server
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
- Bash scripting
- SSH and secure file transfer

## Project Structure

```text
linux-server-administration-lab/
├── README.md
├── docs/
├── scripts/
│   └── system-info.sh
└── screenshots/
```

## Implemented

### System Information Script

**File:** `scripts/system-info.sh`

Collects basic information about the Linux system:

- Hostname
- Operating system
- Kernel version
- System uptime
- Current user
- Root filesystem usage
- Memory and swap usage

Run the script:

```bash
bash scripts/system-info.sh
```

Alternatively, make it executable and run it directly:

```bash
chmod +x scripts/system-info.sh
./scripts/system-info.sh
```

The script displays system information in the terminal and does not modify system configuration.

## Progress

- [x] Git repository initialized and published to GitHub
- [x] First Bash system information script implemented and tested
- [x] Script execution permissions configured
- [ ] Linux administration documentation
- [ ] Automated diagnostic reports
- [ ] Troubleshooting exercises

## Purpose

This repository is a practical learning project focused on building Linux administration skills and preparing for entry-level infrastructure and DevOps roles.

