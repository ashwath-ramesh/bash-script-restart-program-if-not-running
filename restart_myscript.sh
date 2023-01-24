#!/bin/bash

# Name of the python script to monitor
SCRIPT_NAME="/home/user/my_python_script.py"

# Activate the virtual environment
source /home/user/myenv/bin/activate

# Check if the script is still running
if ! pgrep -f "$SCRIPT_NAME" > /dev/null
then
    # If it is not running, start it again
    python3 "$SCRIPT_NAME" &
    # Log the restart
    echo "Restarted my_python_script.py at $(date)" >> /home/user/restart_myscript.log
fi
