#!/usr/bin/env bash

# Script to generate audio files for dictionaries

# We need a root folder and A-Z subfolders
rm -rf audio 2> /dev/null
mkdir -p audio/{A..Z} 2> /dev/null

# Read words file line (word) by line
cat words.txt | while read word; do
  directory=$(echo -e "${word:0:1}") # Get first letter of current word
  directory=$(echo -e "${directory}" | tr '[:lower:]' '[:upper:]') # Make it capital letter
  # Download word pronunciation and save it as mp3 in correct folder
  wget -q -U Mozilla -O - translate.google.com.vn/translate_tts?ie=UTF-8\&q="$word"\&tl=en\&client=tw-ob > "audio/${directory}/${word}.mp3"
done

echo "Done!"
