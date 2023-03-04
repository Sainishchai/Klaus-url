if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sainishchai/Klaus-url.git /Klaus-url
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Klaus-url
fi
cd /Klaus-url
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
