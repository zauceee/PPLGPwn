echo "PPLGPWN - Designed for lgwebtvs! Ported by Kodeine, with luv <3"
echo "updated by llbranco"
interface=eth0
firmware=1100
stage1=/media/internatl/downloads/PPLGPwn-main/stage1.bin
stage2=/media/internatl/downloads/PPLGPwn-main/stage2.bin
chmod +x ./pppwn
	./pppwn --interface $interface --fw $firmware --stage1 $stage1 --stage2 $stage2
