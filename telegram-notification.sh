#!/bin/bash

# Telegram bot token
TOKEN="6156615272:AAGgconO_tweXg1KTG3AQv2-e0_k4-diYrI"

# Telegram chat ID
CHAT_ID="-834821924"

# Message to send
MESSAGE="$1"
# MESSAGE="Test message"


# Send message to Telegram
curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
    -d chat_id="$CHAT_ID" \
    -d text="$MESSAGE"