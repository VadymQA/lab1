#!/bin/bash
URL="https://www.google.com/"


echo "Running the script..."

response_code=$(curl -o /dev/null -s -w "%{http_code}" $URL)

echo "Response code: $response_code"
if [[ $response_code != 2* ]] || [[ $response_code != 3* ]]; then
	echo "$(date) - Status check passed with HTTP code $response_code" >> status_check.log
else
    echo "$(date) - Status check failed with HTTP code $response_code" >> status_check.log
fi

echo "Script execution complete."