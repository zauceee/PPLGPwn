echo "PPLGPWN - Designed for lgwebtvs! Ported by Kodeine, with luv <3"
echo "Updated by llbranco"
interface=eth0
firmware=1100
stage1=/media/internal/downloads/PPLGPwn-main/stage1.bin
stage2=/media/internal/downloads/PPLGPwn-main/stage2.bin
cd /media/internal/downloads/PPLGPwn-main
chmod +x ./pppwn

# send nofification
luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn!</b><br/>Iniciando PS4 Jailbreak. <br/>by: llbranco."}'

./pppwn --interface $interface --fw $firmware --stage1 $stage1 --stage2 $stage2 --auto-retry

luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPLGPwn!</b><br/>PS4 Pwned. <br/>by: llbranco."}'
