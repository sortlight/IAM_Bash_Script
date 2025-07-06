x#!/bin/bash

# 📁 IAM: Permission Auditor Script
# Author: Sort
# Description: Scans for world-writable files in /home and logs results

echo "🔍 Starting permission audit in /home..."

# Set target directory (changeable)
target_dir="/home"

# Output file
output_file="perms_report.txt"

# Find risky files (world-writable)
find "$target_dir" -type f -perm -o=w -exec ls -l {} \; > "$output_file"

# Print summary
file_count=$(wc -l < "$output_file")
echo "⚠️ Found $file_count world-writable files."

echo "📄 Report saved to $output_file"
