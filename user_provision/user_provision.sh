#!/bin/bash

# IAM: Secure User Provisioning Script
# Author: Gabriel
# Description: Automates secure user creation with password reset policy

echo " Starting user provisioning..."

# Prompt for new username
read -p "Enter the new username: " new_user

# Check if user already exists
if id "$new_user" &>/dev/null; then
    echo " User '$new_user' already exists. Aborting."
    exit 1
fi

# Create the user and home directory
sudo useradd -m "$new_user"
echo "✅ User '$new_user' created successfully."

# Set user password
echo " Set a password for '$new_user':"
sudo passwd "$new_user"

# Enforce password change at next login
sudo chage -d 0 "$new_user"
echo " Password reset enforced for first login."

# Log the action
echo "$new_user was created on $(date) by $USER" >> user_audit.log

echo " Provisioning complete for user: $new_user"
