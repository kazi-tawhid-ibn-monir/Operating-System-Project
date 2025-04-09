#!/bin/bash
# Display system health (CPU, Memory, Uptime)

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
MEMORY_USAGE=$(free -h | grep Mem | awk '{print $3 "/" $2}')
UPTIME=$(uptime -p)

zenity --info --text="CPU Usage: $CPU_USAGE%\nMemory Usage: $MEMORY_USAGE\nSystem Uptime: $UPTIME"

