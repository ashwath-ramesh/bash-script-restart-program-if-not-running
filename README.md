# Restart a python script in Linux, if it is not currently running
Use the below simple bash script to restart a program in linux, if it is currently not running.

Get the complete bash script from: ```restart_myscript.sh```

#### (1) Name of the python script to monitor
```SCRIPT_NAME="/path/to/my_python_script.py"```

#### (2) Activate the virtual environment (if you have one)
```source /path/to/myenv/bin/activate```

#### (3) This part checks if the script is still running
```if ! pgrep -f "$SCRIPT_NAME" > /dev/null```

#### (4) If it is not running, start it again in the background 
```python3 "$SCRIPT_NAME" &```

#### (5) I like to log all the restarts with datetime
```echo "Restarted my_python_script.py at $(date)" >> /path/to/restart_myscript.log```

#### (6) Schedule the script on a cronjob that runs every minute. 
```* * * * * /path/to/restart_myscript.sh```

Note: This is not a solution, as much as a band-aid. Always try understand why the program failed in the first place. 

### Remember to 

#### Make the script executable. For script.sh
```chmod +x script.sh```

#### Add a shebang line at the top of the script
```#!/bin/bash```

Execute the script: After making the script executable and adding the shebang line, you can run the script in one of the following ways:
Using the script's relative or absolute path:

```./script.sh```

This command assumes the script is in the current working directory. Replace ./ with the script's absolute path if it is located elsewhere.


