#!/bin/bash

url="https://example.com"
web_content=$(curl -s "$url")

# Extract article titles using grep
titles=$(echo "$web_content" | grep -o '<h2 class="article-title">.*</h2>' | sed -e 's/<[^>]*>//g')

# Display the extracted titles
echo "Article Titles:"
echo "$titles"
