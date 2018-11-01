#!/bin/bash

# Function for loading animation
function loading {
        PID=$1
        i=1
        sp="/-\|" 
        echo -n ' '
        while [ -d /proc/$PID ]
        do      
                printf "\b${sp:i++%${#sp}:1}"
                sleep 0.2
        done
	printf "\n"
}
# Call the loading animation with loading $! after you've sent a command in bg with &
# E.g.:
sleep 10 &
loading $!
