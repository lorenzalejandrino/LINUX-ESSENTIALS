LOG_FILE="log.txt"
GITHUB_USERNAME="${GITHUB_USER:-unknown_user}"


if [ -f "$LOG_FILE" ]; then
    COUNT=$(wc -l < "$LOG_FILE")
else
    COUNT=0
fi


COUNT=$((COUNT + 1))

echo "Update #$COUNT - Current Date and Time: $(date) - Updated by $GITHUB_USERNAME" >> "$LOG_FILE"
