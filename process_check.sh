#!/bin/bash

#path to the executable script which starts the process
#samlpe for init.d script: /etc/init.d/<name> start
#sample for bash script: /root/daemonscript.sh
script=""

#name of the process (get it from "top" when process is running)
process=""

if [ "$(pidof $process)" ]
then
	#all right
	date +%Y/%m/%D\ %H:%M:%S
	echo "$process is running!"
	echo '----------------------'
else
	#not running start the script
	date +%Y/%m/%D\ %H:%M:%S
	echo "Starting $process..."
	echo '----------------------'
	$script
fi
