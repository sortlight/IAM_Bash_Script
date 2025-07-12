# Inactive Account Cleaner

This script audits your system for user accounts that have not logged in for a specified number of days. It's designed to support IAM cleanup routines, especially in environments where temporary access is granted frequently.

## Features

- Scans local user accounts (UID >= 1000)
- Checks login history via `lastlog`
- Flags accounts inactive for 30+ days
- Optional user locking with `usermod -L`
- Filters out system users and shell-less accounts


The script prints out a list of users who haven't logged in for the configured number of days (default: 30). You can modify INACTIVITY_DAYS in the script to customize the threshold.


# Author

Written by [SortSec](x.com/sortsec)
GitHub: [sortlight](https://github.com/sortlight)
