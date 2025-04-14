#!/bin/bash

echo "System Health Monitoring"
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo "Memory Usage:"
free -h
