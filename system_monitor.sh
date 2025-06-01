#!/bin/bash

# Log directory and files (non-root path)
LOG_DIR="$HOME/logs"
METRICS_LOG="$LOG_DIR/system_metrics.log"
ALERT_LOG="$LOG_DIR/alerts.log"
CONF_FILE="$HOME/monitor/monitor.conf"

# Create log directory if it doesn't exist
mkdir -p "$LOG_DIR"

# Ensure only the script owner can execute and edit
chmod 700 "$0"

# Log timestamp
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# CPU Usage Calculation
cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | cut -d'.' -f1)
cpu_usage=$((100 - cpu_idle))

# Memory Usage Calculation
mem_total=$(free -m | awk '/Mem:/ {print $2}')
mem_used=$(free -m | awk '/Mem:/ {print $3}')
mem_usage=$(( (mem_used * 100) / mem_total ))

# Write metrics
echo "$timestamp CPU: $cpu_usage% MEM: $mem_usage%" >> "$METRICS_LOG"

# Log alerts
if [ "$cpu_usage" -gt 80 ]; then
  echo "$timestamp ALERT: CPU usage high at $cpu_usage%" >> "$ALERT_LOG"
fi

if [ "$mem_usage" -gt 80 ]; then
  echo "$timestamp ALERT: Memory usage high at $mem_usage%" >> "$ALERT_LOG"
fi

# Monitor unauthorized access attempts
if [ ! -r "$CONF_FILE" ]; then
  echo "$timestamp ALERT: Unauthorized attempt to access $CONF_FILE" >> "$ALERT_LOG"
fi


