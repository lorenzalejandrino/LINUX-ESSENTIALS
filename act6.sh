#!/bin/bash
USERNAME=${GITHUB_ACTOR:-"unknown-user"}

if [ -f "$log.txt" ]; then
    COUNT=$(wc -l < "$log.txt")
else
    COUNT=0
fi


COUNT=$((COUNT + 1))

echo "Update #$COUNT - Current Date and Time: $(date) - Updated by $GITHUB_USERNAME" >> "$log.txt"
