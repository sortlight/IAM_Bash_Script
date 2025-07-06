#!/bin/bash

# 📋 IAM: Access Log Analyzer
# Author: Gabriel
# Description: Parses auth.log for failed login attempts and logs them

log_file="/var/log/auth.log"
output_file="failed_logins.txt"

echo " Scanning $log_file for failed SSH login attempts..."

# Extract failed login attempts with timestamp and username/IP
grep "Failed password" "$log_file" | awk '{print $1, $2, $3, $9, $11}' > "$output_file"

# Count results
fail_count=$(wc -l < "$output_file")
echo " Found $fail_count failed login attempts."

echo " Report saved to $output_file"
