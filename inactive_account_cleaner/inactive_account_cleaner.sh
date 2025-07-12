#!/bin/bash

# IAM: Inactive Account Cleaner
# Author: Sortlight(SortSec)
# Description: Scans system accounts for inactivity and optionally locks them.

INACTIVITY_DAYS=30
echo "Scanning for accounts inactive for $INACTIVITY_DAYS+ days..."

# Loop through users with a real shell and non-system UID

while IFS=: read -r user _ uid _ _ _ home shell; do
    if [[ "$uid" -ge 1000 && "$shell" != "/usr/sbin/nologin" && "$shell" != "/bin/false" ]]; then
        last_login=$(lastlog -u "$user" | awk 'NR==2 {print $4, $5, $6}')
        last_login_sec=$(date -d "$last_login" +%s 2>/dev/null)
        current_sec=$(date +%s)

        if [ -n "$last_login_sec" ] && [ $(( (current_sec - last_login_sec) / 86400 )) -gt $INACTIVITY_DAYS ]; then
            echo "$user inactive for over $INACTIVITY_DAYS days (last login: $last_login)"
            
            # Uncomment to auto-lock the user
            # sudo usermod -L "$user"
        fi
    fi
done < /etc/passwd
