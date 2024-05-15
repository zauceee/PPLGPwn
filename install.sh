luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn Installing...</b><br/>Project by<br/>zauceee and llbranco."}'

echo "PPLGPWN - Designed for LG WebOS TVs! Ported by Kodeine, with luv <3"
echo "updated by llbranco"

sleep 2

luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn Downloading...</b><br/>Project by<br/>zauceee and llbranco."}'

cd /media/internal/downloads

# remove old release to update
test -e main.zip && rm main.zip
test -e PPLGPwn-main && rm -r -f PPLGPwn-main/
--ignore-fail-on-non-empty
wget https://github.com/llbranco/PPLGPwn/archive/refs/heads/main.zip
unzip main.zip
cd PPLGPwn-main
chmod +x ./start.sh

# check if startup lines exist
if grep -q "#PPLGPwn by llbranco" /var/lib/webosbrew/startup.sh && grep -q "#to remove PPLGPwn from boot, remove the next line" /var/lib/webosbrew/startup.sh && grep -q "./media/internal/downloads/PPLGPwn-main/start.sh" /var/lib/webosbrew/startup.sh; then
    echo "boot script already installed"
else
    # insert startup script
    echo "#PPLGPwn by llbranco" >> /var/lib/webosbrew/startup.sh
    echo "#to remove PPLGPwn from boot, remove the next line" >> /var/lib/webosbrew/startup.sh
    echo "./media/internal/downloads/PPLGPwn-main/start.sh" >> /var/lib/webosbrew/startup.sh
fi

luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn Installed. Starting...</b><br/>The First Time is Unforgettable."}'

echo "installed, feel free to reboot your TV or PS4 if you want"
./start.sh