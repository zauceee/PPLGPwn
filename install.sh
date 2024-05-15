luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn Downloading...</b><br/>Project by<br/>zauceee and llbranco."}'
sleep 3

echo "Downloading..."

test -f install2.sh && rm install2.sh
wget https://raw.githubusercontent.com/llbranco/PPLGPwn/master/install2.sh
chmod +x ./install2.sh
./install2.sh
