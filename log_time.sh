#!/bin/bash
USERNAME=${GITHUB_ACTOR:-"unknown-user"}

if [ -f log.txt ]; then
  COUNT=$(grep -c "^Log Entry #" log.txt)
else
  COUNT=0
fi

((COUNT++))

echo "Log Entry #$COUNT | Date & Time: $(date) | Username: $USERNAME | Total Log Entries: $COUNT" >> log.txt
