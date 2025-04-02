LOG_FILE="log2.txt"

if [ -f "$LOG_FILE" ]; then
    COUNT=$(wc -l < "$LOG_FILE")
    echo "Log has been updated $COUNT times."
else
    echo "No log file found."
fi