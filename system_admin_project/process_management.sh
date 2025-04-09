#!/bin/bash
# List processes and allow the user to kill one

# Display a list of running processes
PROCESS=$(ps aux | zenity --list --column="PID" --column="User" --column="CPU" --column="Memory" --column="Command" --title="Process List" --height=400 --width=600)

# If user selects a process, kill it
if [ ! -z "$PROCESS" ]; then
    PID=$(echo $PROCESS | awk '{print $1}')
    kill -9 $PID
    zenity --info --text="Process with PID $PID has been terminated."
else
    zenity --error --text="No process selected."
fi

