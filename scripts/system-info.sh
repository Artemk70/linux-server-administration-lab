#!/usr/bin/env bash

set -euo pipefail

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
