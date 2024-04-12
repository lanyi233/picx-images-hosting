find . -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.svg" -o -iname "*.jpeg" -o -iname "*.webp" -o -iname "*.ico" \) | sed 's|^./||' | jq -R . | jq -s . > list.json
