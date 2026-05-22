#!/bin/bash
# This script pings a specified host and displays the results.

Host="8.8.8.8"
echo "Pinging $Host..."
ping -c 3 $Host > /dev/null 
# The -c option specifies the number of ping requests to send, and
# > /dev/null suppresses the output of the ping command. 
# We only care about the exit status to determine if the host is reachable or not.
if [ $? -eq 0 ]; then
    echo "Host $Host is reachable."
else
    echo "Host $Host is not reachable."
fi