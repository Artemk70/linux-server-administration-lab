#!/usr/bin/env bash

set -euo pipefail

LOG_DIR="logs"
REPORT_FILE="$LOG_DIR/system-report.txt"

if [[ ! -d "$LOG_DIR" ]]; then
    echo "ERROR: Log directory '$LOG_DIR' does not exist." >&2
    exit 1
fi

if ! touch "$REPORT_FILE"; then
    echo "ERROR: Cannot write to '$REPORT_FILE'." >&2
    exit 1
fi

exec > >(tee "$REPORT_FILE") 2>&1

echo "===== SYSTEM INFORMATION ====="
echo

echo "Hostname:"
hostname
echo

echo "Operating system:"
if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    echo "$PRETTY_NAME"
else
    echo "OS information unavailable"
fi
echo

echo "Kernel:"
uname -r
echo

echo "Uptime:"
uptime -p
echo

echo "Current user:"
whoami
echo

echo "Disk usage:"
df -h /
echo

echo "Memory usage:"
free -h
