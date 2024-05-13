echo "PPLGPWN - Designed for lgwebtvs! Ported by Kodeine, with luv <3"
echo "updated by llbranco"
read -p "Which interface: " int
read -p "Firmware ver(750-1100): " fmv
stage1=/media/internatl/downloads/PPLGPwn-main/stage1.bin
stage2=/media/internatl/downloads/PPLGPwn-main/stage2.bin
# echo $int, $fmv, $st1, $st2
chmod +x ./pppwn
	./pppwn --interface $int --fw $fmv --stage1 $stage1 --stage2 $stage2
 
# send nofification
luna-send -a webosbrew -f -n 1 luna://com.webos.notification/createToast '{"sourceId":"webosbrew","message": "<b>PPLGPwn!</b><br/>Starting your Jailbreak. by: Kodeine and llbranco."}'
