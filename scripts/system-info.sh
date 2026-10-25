#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname -- "$SCRIPT_DIR")"
LOG_DIR="$PROJECT_DIR/logs"
REPORT_FILE="$LOG_DIR/system-report.txt"

usage() {
    echo "Usage: $0 [--help] [--output FILE]"
    echo
    echo "Options:"
    echo "  --help          Show this help message"
    echo "  --output FILE   Write report to FILE instead of the default path"
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --help)
            usage
            exit 0
            ;;
        --output)
            if [[ $# -lt 2 || -z "$2" ]]; then
                echo "ERROR: --output requires a file path." >&2
                exit 2
            fi
            REPORT_FILE="$2"
            shift 2
            ;;
        *)
            echo "ERROR: Unknown argument: $1" >&2
            usage >&2
            exit 2
            ;;
    esac
done

if [[ "$REPORT_FILE" == "$LOG_DIR/"* ]]; then
    if [[ ! -d "$LOG_DIR" ]]; then
        echo "ERROR: Log directory '$LOG_DIR' does not exist." >&2
        exit 1
    fi
fi

REPORT_DIR="$(dirname -- "$REPORT_FILE")"

if [[ ! -d "$REPORT_DIR" ]]; then
    echo "ERROR: Output directory '$REPORT_DIR' does not exist." >&2
    exit 1
fi

TEMP_FILE="$(mktemp "$REPORT_DIR/.system-info.XXXXXX")" || {
    echo "ERROR: Cannot create temporary file in '$REPORT_DIR'." >&2
    exit 1
}

cleanup() {
    rm -f -- "$TEMP_FILE"
}

trap cleanup EXIT

if ! {
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
} > "$TEMP_FILE"; then
    echo "ERROR: Failed to generate system report." >&2
    exit 1
fi

if ! mv -f -- "$TEMP_FILE" "$REPORT_FILE"; then
    echo "ERROR: Cannot replace report '$REPORT_FILE'." >&2
    exit 1
fi

trap - EXIT

cat -- "$REPORT_FILE"
