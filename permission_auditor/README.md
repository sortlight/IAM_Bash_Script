#  Permission Auditor Script  
**Catch dangerous permissions before they catch you.**

---

##  What This Script Does

This script scans a specified directory (default: `/home`) and finds **world-writable files**, which can be a major security risk in shared environments.

It then logs the findings in a report so you or your team can take action.

---

##  Features

- Scans for `chmod 777`-style permission flaws
- Logs risky file paths and metadata
- Simple and extendable
- Outputs a clean report for auditing or cleanup

---

##  How to Use

```bash
chmod +x permission_auditor.sh
./permission_auditor.sh

 Output will be saved to: perms_report.txt

## Skills Showcased

find with permission flags (-perm -o=w)

Bash scripting and redirection

Audit trail generation

CLI security awareness


# Purposeful Security

“We don’t just code for machines — we code to protect purpose.”

identifying cracks in the wall before attackers do. IAM is more than provisioning users. It's about maintaining the integrity of what they access.


# Improvements You Can Add

Scan other dirs: /var/www, /etc, /mnt/data

Add cron job to run daily & email reports

Flag executable 777 files only

Build a cleanup prompt or automated fixer


Crafted by [SortSec](x.com/sortsec) for practical IAM security.

Feel free to fork and extend for your org or cloud stack.
