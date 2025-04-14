#!/bin/bash

echo "Welcome to the System Administration Scripts"
echo "1. Process Management"
echo "2. Disk Monitoring"
echo "3. System Health Monitoring"
echo "4. User Management"
echo "Please select an option (1-4): "
read option

case $option in
    1) ./process_management.sh ;;
    2) ./disk_monitoring.sh ;;
    3) ./health_monitoring.sh ;;
    4) ./user_management.sh ;;
    *) echo "Invalid option. Exiting." ;;
esac
