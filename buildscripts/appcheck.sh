#!/bin/bash
PORT=8000
DURATION=120
END_TIME=$((SECONDS + DURATION))

while [ $SECONDS -lt $END_TIME ]; do
    RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:$PORT)
    if [ $? -eq 0 ]; then
        echo "Service is running."
        exit 0
    else
        echo "Service is not running."
    fi
    sleep 10  # Check every 10 seconds
done

exit 1  # If the service was not running during the entire duration
