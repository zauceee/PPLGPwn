echo "PPLGPWN - Designed for lgwebtvs! Ported by Kodeine, with luv <3"
read -p "Which interface: " int
read -p "Firmware ver(750-1100): " fmv
read -p "Stage(1): " st1
read -p "Stage(2): " st2
# echo $int, $fmv, $st1, $st2
chmod +x ./pppwn
	./pppwn --interface $int --fw $fmv --stage1 $st1 --stage2 $st2
