# pronunciations

If you have ever wondered to have an offline dictionary with full pronunciations (like Google voice), you are at the right place. Currently this project contains more than 500K words.

With your own `words.txt` or provided `words.txt` and `generate.sh` script, you can mass download the words with Google voice as `mp3` files (woman).

## How to download mp3 files

1. unzip `words.zip`
2. make `generate.sh` executable: > chmod +x generate.sh
3. run `generate.sh`: > ./generate.sh
4. wait for download to get finished

**This script is auto resume. You can stop it by CTRL+C and later run it to resume downloads. Before starting it to resume, check the last downloaded word. If its size is zero, delete it manually.**
 
## Using with Goldendict/Goldendictng

Create a directory like `pronunciations.files` in your home and put `A-Z` directories inside it.

In Goldendict/Goldendictng from menu `Edit -> Dictionaries` go to `Sound Dirs` and `Add...` `pronunciations.files` as sound directory.

![Sound Dirs](sound-dir.png)

Make sure you have a working sound player in Goldendict. To do so, in Goldendict from menu `Edit -> Preferences -> Audio` set your audio player (`mplayer` is default but you can for example use vlc). Goldendictng has its own build-in player.

![Audio Player](audio-player.png)

If a word is missing, please open an [issue](https://github.com/yousefvand/pronunciations/issues).
