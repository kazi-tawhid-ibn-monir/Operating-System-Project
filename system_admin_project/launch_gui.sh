#!/bin/bash
# Simple GUI for launching system admin tasks

ACTION=$(zenity --list --title="System Admin Tasks" --column="Tasks" \
    "Process Management" \
    "Disk Monitoring" \
    "Backup Files" \
    "System Health" \
    "User Management")

case $ACTION in
    "Process Management")
        ./process_management.sh
        ;;
    "Disk Monitoring")
        ./disk_monitor.sh
        ;;
    "Backup Files")
        ./backup.sh
        ;;
    "System Health")
        ./health_monitor.sh
        ;;
    "User Management")
        ./user_management.sh
        ;;
    *)
        zenity --error --text="No task selected."
        ;;
esac

