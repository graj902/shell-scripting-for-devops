#!/bin/bash

# Prompt for the username only
read -p "Enter the username to create: " username

# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Attempt to create the user
# Use sudo because useradd requires root privileges
sudo useradd -m "$username"

# Check if the user was created successfully
if [ $? -eq 0 ]; then
    echo "User '$username' was created successfully."
else
    echo "Failed to create user '$username'."
fi
