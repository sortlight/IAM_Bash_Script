#!/bin/bash

# 📋 IAM: Access Log Analyzer
# Author: Gabriel
# Description: Parses SSH failed login attempts and logs them

# Accept custom log file or default to real auth.log
log_file="${1:-/var/log/auth.log}"
output_file="failed_logins.txt"

# Check if log file exists
if [ ! -f "$log_file" ]; then
    echo "❌ Log file '$log_file' not found. Please provide a valid file."
    exit 1
fi

echo "🔎 Scanning $log_file for failed SSH login attempts..."

# Extract and format failed login attempts
grep "Failed password" "$log_file" | awk '{print $1, $2, $3, $9, $11}' > "$output_file"

# Count and report
fail_count=$(wc -l < "$output_file")
echo "⚠️ Found $fail_count failed login attempts."
echo "📄 Report saved to $output_file"
