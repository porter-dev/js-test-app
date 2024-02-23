#!/bin/bash

# Function to log a fatal message
log_fatal() {
    local message="$1"
    echo "$(date +"%Y-%m-%d %T") [FATAL] $message" >> error.log
}

# Main loop
counter=0
while true; do
    # Print the current number
    echo "Number: $counter"

    # Increment the counter
    ((counter++))

    # Check if the counter has reached a certain threshold
    if [ $counter -eq 10 ]; then
        # Log a fatal message
        log_fatal "Counter reached 10"
        break
    fi

    # Sleep for 0.5 seconds
    sleep 0.5
done
