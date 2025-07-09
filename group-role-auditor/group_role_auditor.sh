#!/bin/bash

# IAM: Group & Role Auditor
# Author: Sortlight
# Description: Lists system users and their group memberships.

output_file="group_audit_report.txt"
echo " Auditing user group assignments..." > "$output_file"
echo "--------------------------------------" >> "$output_file"

# Loop through users with a shell (active users only)

grep '/bin/bash' /etc/passwd | cut -d: -f1 | while read user; do
    groups=$(id -nG "$user")
    echo "👤 $user → $groups" >> "$output_file"
done

echo " Audit complete. Results saved to $output_file"
