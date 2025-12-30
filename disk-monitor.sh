#!/bin/bash

THRESHOLD=80
EMAIL="04.adityakumar.10a@gmail.com"
LOGFILE="disk_monitor.log"

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "$(date) - Disk usage: $usage%" >> "$LOGFILE"

if [ "$usage" -gt "$THRESHOLD" ]
then
    echo "ALERT: Disk usage is $usage% on $(hostname)" >> "$LOGFILE"

    echo "Disk usage is $usage% on $(hostname) at $(date)" | \
    mail -s "🚨 Disk Alert on $(hostname)" $EMAIL
fi
