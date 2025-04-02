GITHUB_USERNAME="${GITHUB_USER:-unknown_user}"

if [ -f "log2.txt" ]; then
    COUNT=$(wc -l < "log2.txt")
else
    COUNT=0
fi

# Increment the count
COUNT=$((COUNT + 1))

# Log the update with count, timestamp, and username
echo "Update #$COUNT - Current Date and Time: $(date) - Updated by $GITHUB_USERNAME" >> "log2.txt"