#!/bin/bash

output='{
    "name": "Airport",
    "description": "",
    "icons": ['
first=1

for file in ./air/*; do
    if [[ -f "$file" ]]; then
        if [[ $first -eq 0 ]]; then
            output+=','
        fi
        filename=$(basename "$file")
        name="${filename%.*}"
        output+="
        {
            \"name\": \"$name\",
            \"url\": \"https://pic.lanyi233.xyz/air/$filename\"
        }"
        first=0
    fi
done

output+=']
}'

echo "$output"