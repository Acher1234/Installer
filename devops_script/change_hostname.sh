#!/bin/bash

# Ensure the script runs with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Error: Please run this script as root or using sudo."
  exit 1
fi

# Grab the new hostname from the script argument
NEW_HOSTNAME=$1

if [ -z "$NEW_HOSTNAME" ]; then
  echo "Usage: $0 <new-hostname>"
  exit 1
fi

# Get current hostname
OLD_HOSTNAME=$(hostname)

echo "Changing hostname from '$OLD_HOSTNAME' to '$NEW_HOSTNAME'..."

# 1. Change the hostname instantly and permanently via systemd
if command -v hostnamectl &> /dev/null; then
    hostnamectl set-hostname "$NEW_HOSTNAME"
else
    # Fallback for older non-systemd systems
    echo "$NEW_HOSTNAME" > /etc/hostname
    hostname "$NEW_HOSTNAME"
fi

# 2. Update /etc/hosts file to prevent network resolution issues
if [ -f /etc/hosts ]; then
    sed -i "s/$OLD_HOSTNAME/$NEW_HOSTNAME/g" /etc/hosts
else
    echo "127.0.0.1   $NEW_HOSTNAME" >> /etc/hosts
fi

echo "Success! Hostname changed. Open a new terminal session to see the updates."
