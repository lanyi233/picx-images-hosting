find . -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) | sed 's|^./||' | jq -R . | jq -s . > list.json