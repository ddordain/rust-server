#!/bin/bash

generate_random_string() {
    python3 -c "import random; import string; print(''.join(random.choices(string.ascii_letters + string.digits, k=10)))"
}

# URL of the server to test
server_url="localhost:8080/send"

# Headers for the POST request
content_type="Content-Type: application/json"

# Number of random strings to send
num_requests=1000

# Reset the SECONDS variable
SECONDS=0

# Sending random strings in parallel
for i in $(seq 1 $num_requests); do
    random_string=$(generate_random_string)
    data="{\"message\": \"${random_string}\"}"
    curl -X POST -H "${content_type}" -d "${data}" ${server_url} &
    echo
done

# Wait for all background jobs to complete
wait
echo
# Print the runtime
echo "Total runtime: ${SECONDS} seconds"

