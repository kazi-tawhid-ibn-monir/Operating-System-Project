#!/bin/bash
# Simple backup of a directory to a tar.gz file

DIRECTORY=$(zenity --entry --title="Backup Directory" --text="Enter the directory to back up:")
DESTINATION=$(zenity --file-chooser --title="Choose Backup Location")

if [ ! -z "$DIRECTORY" ] && [ ! -z "$DESTINATION" ]; then
    tar -czf "$DESTINATION/backup_$(date +%Y-%m-%d).tar.gz" "$DIRECTORY"
    zenity --info --text="Backup created successfully!"
else
    zenity --error --text="Invalid directory or destination."
fi

