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
| 1️⃣ | [User Provisioning Script](scripts/user-provisioning/) | Create secure Linux users with forced password resets | `useradd`, `passwd`, `chage`, IAM lifecycle |
| 2️⃣ | Permission Auditor | Detect world-writable files and generate a security report | `find`, file perms, least privilege |
| 3️⃣ | Access Log Analyzer | Parse failed login attempts from `/var/log/auth.log` | `grep`, `awk`, log analysis |
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

## 🎯 Who This Is For

- Cybersecurity recruiters looking for practical skills
- DevOps & IAM engineers needing reusable scripts
- Hackers & builders who respect access boundaries
- Anyone curious how Linux and faith meet at the terminal 🕊️

---

## 🛠️ Getting Started

```bash
# Clone this repo
git clone https://github.com/YOUR_USERNAME/iam-bash-scripts.git
cd iam-bash-scripts

# Make a script executable
chmod +x scripts/user-provisioning/user_provision.sh

# Run it
./scripts/user-provisioning/user_provision.sh
