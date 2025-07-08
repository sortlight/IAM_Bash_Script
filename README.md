#  IAM Bash Scripts Portfolio  
**Automating trust, access and accountability — one script at a time.**


---

##  Overview

This repository is a growing portfolio of **Bash scripts tailored for Identity and Access Management (IAM)**. It reflects my skills in Linux user management, access control, automation, auditing and cloud security.

Each script solves a real-world IAM problem starting from onboarding new users securely to scanning for risky permissions and even detecting access anomalies.

But more than that, it reflects my **approach to tech with intention, precision and personal purpose**.

---

## Scripts Included

| # | Script Name | Description | Skills |
|---|-------------|-------------|--------|
| 1️⃣ | [User Provisioning Script](user_provision) | Create secure Linux users with forced password resets | `useradd`, `passwd`, `chage`, IAM lifecycle |
| 2️⃣ | [Permission Auditor](permission_auditor) | Detect world-writable files and generate a security report | `find`, file perms, least privilege |
| 3️⃣ | [Access Log Analyzer](access-log-analyzer) | Parse failed login attempts from `/var/log/auth.log` | `grep`, `awk`, log analysis |
| 4️⃣ | Group & Role Auditor | List all users and their group/role mappings | `/etc/passwd`, loops, `groups` |
| 5️⃣ | Inactive Account Cleaner | Remove users who haven’t logged in for X days | `lastlog`, `userdel`, lifecycle policies |

---

##  Why IAM?

Identity is the **new perimeter** in modern security. Whether you’re managing Linux servers, deploying smart contracts, or building Web3 bots — controlling *who has access* to *what* is everything.

This repo demonstrates how I:
- Automate **onboarding and offboarding**
- Implement **least privilege**
- Analyze **access events**
- Enforce **security policy with Bash**

---

##  Who This Is For

- Cybersecurity recruiters looking for practical skills
- DevOps & IAM engineers needing reusable scripts
- Hackers & builders who respect access boundaries
- Anyone curious how Linux and faith meet at the terminal 

GitHub Actions Included
Each script is tested via CI using ShellCheck to ensure clean, portable Bash:

'''yaml

     > .github/workflows/bash-test.yml

My Twist on IAM
“Whoever is faithful with little will be ruler over much.” – Luke 16:10

This repo is more than code. It’s a testament to stewardship — of accounts, systems and the people behind them. Tech isn’t just technical; it’s spiritual infrastructure. Here, IAM means “I Assign Meaning.”


# What’s Next


Role-based group auto-assignment

SSH key injection for DevOps bots

Dream logger for spiritual journaling on login 

Multi-cloud identity support (AWS IAM + Bash)

# Let’s Connect
Love this repo? Want me to build IAM scripts for your org, bot or brand?

DM me on [X](x.com/sortsec) or [LinkedIn](www.linkedin.com/ganiyusortput) — or fork this repo and build your own kingdom of command.



