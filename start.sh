if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lucifer86790/dash-bot.git /dash-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /dash-bot
fi
cd /dash-bot
pip3 install -U -r requirements.txt
echo "Starting Shortner_file...."
python3 bot.py
