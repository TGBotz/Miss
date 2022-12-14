if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TGBotz/Miss /Miss
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Miss
fi
cd /Miss
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
