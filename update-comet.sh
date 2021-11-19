#! /bin/bash

RELEASE_URL="https://github.com/leftwinghades/comet-discord-bot/archive/refs/tags/v$1.tar.gz"

echo "Downloading release c$1 from Github"
wget "https://github.com/leftwinghades/comet-discord-bot/archive/refs/tags/v$1.tar.gz"

echo "Extracting..."
tar -zxf v$1.tar.gz

echo "Moving contents to Bot/"
mv comet-discord-bot-$1/* Bot/

echo "Cleaning up..."
rm -r comet-discord-bot-$1/
rm v$1.tar.gz