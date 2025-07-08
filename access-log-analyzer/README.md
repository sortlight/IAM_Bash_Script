#  Access Log Analyzer  
**Catch the intruders before they catch you slipping.**

---

###  Purpose

This little Bash beauty is my custom-built **Access Log Analyzer** — a script designed to sniff out **failed login attempts** on a Linux system using `auth.log`.

Whether you're chasing down brute-force bots, testing security posture, or just learning how real-world log analysis works — this script has your back like a mini SOC analyst on call 🕵️‍♂️.

---

### What It Does

- ✅ Scans `auth.log` (or any custom log) for failed SSH login attempts  
- ✅ Parses out the **date**, **username**, and **IP address**  
- ✅ Saves it neatly in `failed_logins.txt`  
- ✅ Works even **offline** using the included `sample_auth.log`  
- ✅ Makes you look smart and security-aware (facts)

---

###  What You'll Learn or Showcase

- Real Linux log parsing
- Using `grep` + `awk` for clean data extraction
- Understanding SSH brute-force attempts
- Creating simple SIEM-like tools with Bash

---

###  Files Included

| File | Description |
|------|-------------|
| `access_log_analyzer.sh` | The main Bash script you’ll run |
| `sample_auth.log`        | A fake log file for testing offline |
| `failed_logins.txt`      | Output log generated after running the script |
| `README.md`              | You're reading it |

---

### ⚙️ How to Use

####  Offline (For Testing or Demos)

```bash
chmod +x access_log_analyzer.sh
./access_log_analyzer.sh sample_auth.log
