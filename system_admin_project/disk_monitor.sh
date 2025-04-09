#!/bin/bash
# Check disk usage and alert if over 90%

DISK_USAGE=$(df -h | zenity --text-info --title="Disk Usage" --height=400 --width=600)

# Check if disk usage exceeds 90%
HIGH_USAGE=$(df -h | grep -E '([8-9][0-9]|100)%' | wc -l)

if [ "$HIGH_USAGE" -gt 0 ]; then
    zenity --warning --text="Warning! One or more partitions have exceeded 90% usage."
else
    zenity --info --text="All disk partitions are within acceptable limits."
fi

