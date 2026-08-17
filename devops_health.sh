#!/bin/bash

# Author: Sohel
# Date: 16 Aug 2026
# Description: Basic server health check script
# Version: v1

# Exit if no directory argument is provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a directory."
    echo "Usage: $0 <directory>"
    exit 1
fi

TARGET_DIR="$1"

# Check whether the provided path is a directory
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory '$TARGET_DIR' does not exist."
    exit 1
fi

# System information
CURRENT_DATE=$(date)
HOSTNAME=$(hostname)
WORKING_DIR=$(pwd)
CPU_COUNT=$(nproc)

# Display system information
show_system_info() {
    echo "======================================"
    echo "        SERVER HEALTH CHECK"
    echo "======================================"
    echo "Date              : $CURRENT_DATE"
    echo "Hostname          : $HOSTNAME"
    echo "Working Directory : $WORKING_DIR"
    echo "CPU Count         : $CPU_COUNT"
    echo "Target Directory  : $TARGET_DIR"
    echo "======================================"
}

show_system_info

# Search for error messages in the target directory
echo
echo "Checking for errors in log files..."
echo "--------------------------------------"

grep -Rin "error" "$TARGET_DIR" 2>/dev/null | head -10

echo
echo "Server health check completed successfully."
exit 0
