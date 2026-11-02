
#!/usr/bin/env bash

set -u

echo "================================"
echo "Server Health Check"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "================================"

echo
echo "[CPU LOAD]"
uptime

echo
echo "[MEMORY]"
free -h

echo
echo "[DISK]"
df -h 

echo
echo "[SSH SERVICE]"
if systemctl is-active --quiet ssh; then
    echo "SSH: RUNNING"
else
    echo "SSH: NOT RUNNING"
fi

echo
echo "Health check completed."
