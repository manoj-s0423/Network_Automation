#!/bin/bash

# This script checks the health of a specified web host by sending an HTTP request and analyzing the response.

Host="https://www/google.com"
echo "Checking the health of $Host..."
Status=$(curl -o /dev/null -s -w "%{status_code}" $Host)
# The curl command is used to send an HTTP request to the specified host.
# The -o /dev/null option discards the output of the request,
# -s suppresses the progress meter and error messages, and
# -w "%{status_code}" outputs the HTTP status code of the response.
if [ $Status -eq 200 ]; then
    echo "Host $Host is healthy. Status code: $Status"
else
    echo "Host $Host is not healthy. Status code: $Status"
fi

