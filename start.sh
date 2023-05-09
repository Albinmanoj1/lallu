if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Albinmanoj1/lallu.git /lallu
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /lallu
fi
cd /lallu
pip3 install -U -r requirements.txt
echo "Starting gogi...."
python3 bot.py
