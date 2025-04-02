LOG_FILE="log2.txt"
GITHUB_USERNAME="${GITHUB_USER:-unknown_user}"

if [ -f "log2.txt" ]; then
    COUNT=$(wc -l < "log2.txt")
else
    COUNT=0
fi


COUNT=$((COUNT + 1))

echo "Update #$COUNT - Current Date and Time: $(date) - Updated by $GITHUB_USERNAME" >> "$LOG_FILE"
