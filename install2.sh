luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn Installing!</b><br/>Project by: <br/>zauceee and llbranco."}'

echo -e "                                                                                             ....                                                                                                       
                                                                                       /%%%%%%##%%%%%%(.                                                                                                
   &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(      /%%#. *%%%%%%%%%%%%%%#    (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,                                                       
                                .@@@@@*                             *#(. *@@@@@.  (%%, #%%%%%%%%%%%%%%%%%%%(                                #@@@@%                                                      
                                 (@@@@@                            (%%%%  #@@@@( %%# /%%(   (%/ %%%%%%%%%%%%#                                @@@@@                                                      
                                /@@@@@.                                  #@@@@@ ,%%.*%%%%%#%%%/ %%%%%%%%%%%%%/                             .@@@@@#                                                      
     *&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*         *&@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,  /%% %%%%%%%%%%/ %%(....... ,%%   (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#  *@@%               #@@/   /@@&*             @@&       
   *@@@@@#                                  @@@@@@*                             ,%%.,%%%%%%%%%/ %%%%%%%%%% (%* @@@@@&.                            *@@%               #@@/   /@@. .&%          @@&       
   &@@@@/                                   @@@@@.                               #%% *%%%%%%%%/ ,,,%%%%%% *%# (@@@@&                              *@@%      *%*      #@@/   /@@.     /%,      @@&       
   &@@@@*                                   @@@@@.                                *%%/ /%%%%%%%%%%%%%%%..%%/  (@@@@%                              *@@%   #&.   .@%   #@@/   /@@.        ,@#   @@&       
   &@@@@*                                   @@@@@.                                  ,%%%* ./#%%%%%(, ,#%%/    (@@@@%                              *@@@@/           *@@@@/   /@@.            (@@@&       
                                                                                       .#%%%%%%%%%%%%#*      
llbranco mod
beta installer
"
																			   
echo "PPLGPWN - Designed for LG WebOS TVs! Ported by Kodeine, with luv <3"
echo "Updated by llbranco"

luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn Installing!</b><br/>Project by: <br/>zauceee and llbranco."}'

cd /media/internal/downloads
wget https://github.com/llbranco/PPLGPwn/archive/refs/heads/main.zip
unzip main.zip
cd PPLGPwn-main
chmod +x ./start.sh

echo 'PPLGPwn by llbranco' >> /var/lib/webosbrew/startup.sh
echo 'to remove PPLGPwn from boot, remove the next line' >> /var/lib/webosbrew/startup.sh
echo './media/internal/downloads/PPLGPwn-main/start.sh' >> /var/lib/webosbrew/startup.sh

luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn Installed! Starting...</b><br/>The First Time is Unforgettable."}'
./start.sh
