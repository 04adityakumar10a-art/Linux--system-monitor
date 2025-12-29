#!/bin/bash

LOGFILE=system.log

echo "========================" >> $LOGFILE
echo "System Report - $(date)" >> $LOGFILE

echo "Logged in users:" >> $LOGFILE
who >> $LOGFILE

echo "" >> $LOGFILE
echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Memory Usage:" >> $LOGFILE
free -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Top CPU Processes:" >> $LOGFILE
ps aux --sort=-%cpu | head -6 >> $LOGFILE

echo "========================" >> $LOGFILE
