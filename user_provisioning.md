# 👤 User Provisioning Script  
**Securely onboard new Linux users — without forgetting the audit trail.**

---

## 🔧 What This Script Does

This Bash script simplifies the secure creation of new users on a Linux system. 
It’s especially useful in DevSecOps, IAM or IT support roles where consistency and security matters.

---

## Features

- Prompts for a new username
- Checks if the user already exists
- Creates the user with a home directory
- Prompts for password and sets it securely
- Forces password change on first login (`chage -d 0`)
- Logs actions to `user_audit.log`

---

##  How to Use

```bash
chmod +x user_provision.sh
./user_provision.sh

```
You’ll need sudo privileges to run this script properly.

# Skills Showcased
Linux user lifecycle management

Secure password policy enforcement

Log tracking for IAM events

Conditional Bash logic (if id ...)

User experience with prompts & emojis

# Suggested Improvements

Auto-assign to default groups (e.g. dev, sudo)

Add expiry dates for temp accounts

Integrate email or log sync to Slack/Discord

Use config files or CSV to provision multiple users

# Made with intention by [SortSec](x.com/sortsec)

For learning, security and a safer tech ecosystem.

