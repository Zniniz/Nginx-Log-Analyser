#!/bin/bash

COUNT=5

LOG_FILE=nginx-access.txt

# Prints IP 
echo -e "\nTop 5 IP addresses with most requests:"
awk '{print $1}' ${LOG_FILE} | sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n ${COUNT}

# Prints Paths
echo -e "\nTop 5 most requested paths:"
awk '{print $7}' ${LOG_FILE} | sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n ${COUNT}

# Prints Status Codes
echo -e "\nTop 5 response status codes:"
awk -F\" '{print $3}' ${LOG_FILE} | awk '{print $1}' | sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n ${COUNT}

# Prints User Agents
echo -e "\nTop 5 user agents:"
awk -F\" '{print $6}' ${LOG_FILE} | sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n ${COUNT}
