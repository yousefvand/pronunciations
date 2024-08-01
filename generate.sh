#!/usr/bin/env bash

# Script to generate audio files for dictionaries by Remisa Yousefvand

words=$(wc -l words.txt)

# Check if this is a fresh run or a resume    
if [ -d "./audio" ] && [ -d "./audio/A" ]; then
  echo "Resuming download..."
else
  # Fresh run. We need a root folder and A-Z subfolders
  rm -rf ./audio 2> /dev/null
  mkdir -p ./audio/{A..Z} 2> /dev/null
fi

i=0
# Read words file line (word) by line
while read -r word; do
  ((i++))
  # Get first letter of current word and make it uppercase
  directory="$(echo "${word:0:1}" | tr '[:lower:]' '[:upper:]')"
  if [ -e "./audio/${directory}/${word}.mp3" ]; then
    echo "Pronunciation already exists, skipping: ${word}.mp3"
    continue
  fi
  # Download word pronunciation and save it as mp3 in the correct folder
  wget -q -U Mozilla -O "audio/${directory}/${word}.mp3" "https://translate.google.com.vn/translate_tts?ie=UTF-8&q=${word}&tl=en&client=tw-ob"  
  echo "${i}/${words}   ${word}.mp3" # print current word
done < words.txt

echo "Done!"
