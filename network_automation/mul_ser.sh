#!/bin/bash

for HOST in google.com yahoo.com github.com
do
    ping -c 1 $HOST > /dev/null

    if [ $? -eq 0 ]
    then
        echo "$HOST reachable"
    else
        echo "$HOST unreachable"
    fi
done