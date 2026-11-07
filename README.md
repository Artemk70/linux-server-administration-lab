# Linux Server Administration Lab

A hands-on learning project focused on Linux system administration, troubleshooting, Bash scripting, and infrastructure fundamentals.

This repository documents practical exercises, technical documentation, and automation tasks performed in a virtual Linux server environment.

The project aims to develop practical engineering skills relevant to Linux system administration, IT infrastructure, and entry-level DevOps roles.

## Project Goals

- Practice Linux system administration in a virtual lab.
- Develop Bash scripting and command-line skills.
- Learn system diagnostics and troubleshooting techniques.
- Understand Linux filesystem hierarchy and system organization.
- Manage Linux users, groups, and file permissions.
- Practice remote server administration using SSH.
- Use Git and GitHub for version control and technical documentation.
- Build foundational knowledge of networking, monitoring, and infrastructure automation.

## Lab Environment

| Component | Configuration |
|---|---|
| Host OS | Linux Mint 22.3 |
| Server OS | Ubuntu Server 24.04 LTS |
| Virtualization | VirtualBox 7.0 |
| Scripting | Bash |
| Version Control | Git and GitHub |
| Remote Administration | SSH and SCP |
| Code Editor | Visual Studio Code |

## Repository Structure

```text
linux-server-administration-lab/
├── README.md
├── docs/
│   ├── README.md
│   ├── lab-environment.md
│   └── guides/
│       ├── filesystem.md
│       └── users-and-permissions.md
├── scripts/
│   └── system-info.sh
├── screenshots/
└── logs/
    └── system-report.txt
```

### Directory Overview

- `docs/` — technical documentation and practical guides.
- `docs/guides/` — Linux system administration guides.
- `scripts/` — Bash scripts for system administration and diagnostics.
- `screenshots/` — screenshots documenting practical lab exercises.
- `logs/` — generated diagnostic reports.

## Documentation

Technical documentation is available in the [`docs/`](docs/README.md) directory.

- [Documentation Index](docs/README.md) — documentation overview and navigation.
- [Lab Environment](docs/lab-environment.md) — laboratory hardware, operating systems, virtualization, and development tools.
- [Linux Filesystem Administration](docs/guides/filesystem.md) — filesystem hierarchy, FHS, system directories, and UsrMerge.
- [Linux Users and Permissions](docs/guides/users-and-permissions.md) — user and group management, file ownership, permissions, ACL, and sudo privileges.

## Implemented

### 1. System Information Script

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

The script includes:

- Command-line argument validation.
- Error handling for unknown options.
- Validation of required output paths.
- Checks for non-existent output directories.
- Temporary-file handling to avoid leaving partially written reports if report generation fails.

The script collects diagnostic information and generates reports. It does not modify system configuration.

#### Basic Checks

Check Bash syntax:

```bash
bash -n scripts/system-info.sh
```

Run the help option:

```bash
./scripts/system-info.sh --help
```

Generate a report:

```bash
./scripts/system-info.sh --output /tmp/system-report.txt
```

Inspect the generated report:

```bash
cat /tmp/system-report.txt
```

### 2. Linux Filesystem Administration

**File:** `docs/guides/filesystem.md`

Technical documentation covering the Linux filesystem hierarchy and its practical examination in Ubuntu Server.

Topics include:

- Filesystem Hierarchy Standard (FHS).
- Main Linux system directories.
- Directories relevant to system administration and DevOps.
- Practical examination of the root filesystem.
- Symbolic links and the UsrMerge mechanism.
- Basic filesystem inspection commands.

### 3. Linux Users and Permissions

**File:** `docs/guides/users-and-permissions.md`

Technical documentation based on practical user and permission management exercises in Ubuntu Server.

Topics include:

- Linux users and groups.
- File ownership and permissions.
- Access Control Lists (ACL).
- ACL masks and effective permissions.
- Directory permissions and file deletion.
- Sudo privileges.
- Access-control troubleshooting.

## Progress

- [x] Initialized a Git repository and published it to GitHub.
- [x] Created and tested a Bash system information script.
- [x] Configured script execution permissions.
- [x] Implemented diagnostic report generation and custom output paths.
- [x] Added command-line argument validation.
- [x] Implemented temporary-file handling.
- [x] Created the Linux administration documentation structure.
- [x] Documented the laboratory environment.
- [x] Added the Linux filesystem administration guide.
- [x] Added the Linux users and permissions guide.
- [ ] Expand Linux administration documentation with practical guides.
- [ ] Develop practical Linux troubleshooting exercises.
- [ ] Document troubleshooting procedures and verified solutions.

## Next Steps

Planned areas of study and development include:

- Linux users, groups, and permissions troubleshooting.
- Processes and systemd services.
- Disk and filesystem administration.
- Filesystem mounting and `/etc/fstab`.
- Network configuration and troubleshooting.
- System logs and `journalctl`.
- System monitoring and resource analysis.
- Bash scripting and automation fundamentals.

## Purpose

This repository is an ongoing practical learning project demonstrating the development of skills in Linux system administration, Bash scripting, troubleshooting, and Git-based workflows.

It serves as a technical portfolio of practical laboratory exercises, documented troubleshooting procedures, and system administration knowledge while preparing for Linux administration and DevOps engineering opportunities.

The project will evolve as new technologies and administration practices are studied, implemented, tested, and documented.
