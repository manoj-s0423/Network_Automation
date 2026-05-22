#!/bin/bash
# This script pings a specified host and displays the results.

Host="Google.com"
echo "Checking if port 80 is open on $Host..."
port=80
nc -zv $Host $port 
# nc (netcat) is a versatile networking utility that can be used for various purposes, 
# including port scanning. In this script, we use nc to check if port 80 (HTTP) is open on the specified host.
# The -z option tells nc to scan for listening daemons without sending any data, and
# -v enables verbose mode to display the results of the scan.
if [ $? -eq 0 ]; then
    echo "Port $port on $Host is open."
else
    echo "Port $port on $Host is closed."
fi  
