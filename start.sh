#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Enable debugging to see each command as it's executed
set -x

# Check if UPSTREAM_REPO variable is set and not empty
if [ -z "${UPSTREAM_REPO}" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/dhanush2bot/filmyfilter2.git /filmyfilter2
else
  echo "Cloning Custom Repo from ${UPSTREAM_REPO}"
  git clone "${UPSTREAM_REPO}" /filmyfilter2
fi

# Navigate to the repository directory
cd /filmyfilter2

# Update Python dependencies
pip3 install -U -r requirements.txt

# Start the bot
echo "Starting Bot...."
python3 bot.py

