#!/bin/bash

# Parse JSON data from stdin
read -r json

# Extract fields from JSON data
status=$(echo "$json" | jq -r '.status')
alertname=$(echo "$json" | jq -r '.commonLabels.alertname')
summary=$(echo "$json" | jq -r '.annotations.summary')
description=$(echo "$json" | jq -r '.annotations.description')

# Send notification to Telegram if status is firing
if [ "$status" == "firing" ]; then
    message="Grafana Loki alert: $alertname\n\nSummary:\n$summary\n\nDescription:\n$description"
    ./telegram-notification.sh "$message"
fi