#!/bin/bash

# Update Kali Linux
echo "Updating Kali Linux..."
apt-get update -y

# Install necessary tools
echo "Installing necessary tools..."
apt-get install -y nikto sqlmap dirbuster w3af whatweb

# Run Nikto
echo "Running Nikto..."
nikto -h <target_url>

# Run SQLMap
echo "Running SQLMap..."
sqlmap -u "<target_url>/login.php?username=test&password=test" --dbs

# Run DirBuster
echo "Running DirBuster..."
dirbuster -u <target_url> -w /usr/share/wordlists/dirb/common.txt

# Run W3AF
echo "Running W3AF..."
w3af_console -s /usr/share/w3af/plugins/attack/payloads/sql_injection.py -o output.html <target_url>

# Run WhatWeb
echo "Running WhatWeb..."
whatweb <target_url>

# Run other tools as needed
# ...

echo "Testing completed!"
