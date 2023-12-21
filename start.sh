if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dhanush2bot/filmyfilter2.git /filmyfilter2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filmyfilter2
fi
cd /filmyfilter2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
