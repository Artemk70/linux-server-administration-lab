# Lab Environment

## Overview

The Linux Server Administration Lab is a virtualized environment used to practice Linux system administration, troubleshooting, and Bash automation.

The laboratory consists of a Linux Mint host machine and an Ubuntu Server virtual machine running in Oracle VirtualBox.

## Host Machine

| Component | Configuration |
|---|---|
| Hardware | Lenovo Legion Y540-15IRH-PG0 |
| Operating System | Linux Mint 22.3 |
| Architecture | x86_64 |
| Kernel | Linux 7.0.0-42-generic |
| RAM | 8 GB |

## Virtualization

| Component | Configuration |
|---|---|
| Platform | Oracle VirtualBox |
| Version | 7.0.16 |

## Virtual Server

| Component | Configuration |
|---|---|
| Operating System | Ubuntu Server 24.04.4 LTS |
| Hostname | ubuntudevops |
| Administration User | devops |
| Virtual Disk | 25 GB |
| Storage | LVM |

## Administration and Development Tools

The following tools are used for administration and development:

- **SSH** — remote server administration.
- **SCP** — secure file transfer.
- **Bash** — shell scripting and automation.
- **Git** — version control.
- **GitHub** — remote repository hosting.
- **Visual Studio Code** — code editing and development.
- **ShellCheck** — static analysis of shell scripts.
- **shfmt** — shell script formatting.
- **Python 3** — scripting and automation.

## Repository

The laboratory documentation and scripts are maintained in the GitHub repository:

[linux-server-administration-lab](https://github.com/Artemk70/linux-server-administration-lab)

The repository contains:

- `docs/` — technical documentation and lab notes.
- `scripts/` — Bash administration and diagnostic scripts.
- `screenshots/` — screenshots documenting practical work.
- `logs/` — generated diagnostic reports.

## Scope of the Laboratory

The laboratory is designed to practice:

1. Linux user and group management.
2. File ownership and permissions.
3. Process and service administration.
4. Disk and filesystem management.
5. Network configuration and troubleshooting.
6. System log analysis.
7. Bash scripting and automation.
8. Remote administration using SSH and SCP.

## Documentation Policy

The documentation describes the actual laboratory configuration and verified practical exercises.

Configuration details that have not yet been tested are not presented as completed work.

The environment will be updated as the laboratory evolves.
