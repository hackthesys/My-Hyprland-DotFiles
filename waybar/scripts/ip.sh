#!/bin/bash


# Extract and wrap the IP as JSON-safe string
ip=$(ip -4 addr show | awk '/inet/ && $2 !~ /^127/ {
    split($2, ip, "/"); print ip[1]; exit
}')

# Wrap the output in proper JSON
echo "{\"text\": \"$ip\"}"