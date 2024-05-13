
# PPLGPwn (llbranco mod) only for fw1100
based on: https://github.com/zauceee/PPLGPwn
A method of executing PPPwn through rooted LGTV's.
This method is using the C++ version of PPPwn, made by xfangxfang, the link to the repo it's this one:
https://github.com/xfangfang/PPPwn_cpp

It provides a new way of jailbreaking your PS4, using a rooted LGTV.
For more information of which firmwares are supported, visit the link above.

## Requirements
- Rooted LGTV
- Ethernet cable
- Device to connect to the TV thru ssh (You can use a phone) or https://github.com/webosbrew/dev-manager-desktop


## How can I do it?
Firstly you'll need to root your LGTV, the root itself it supported by a couple of models, check both exploits to see if your TV is capable of doing so, more steps on how to root it and activate SSH aswell are available there:
### Root my TV: https://rootmy.tv/
### Dejavuln: https://github.com/throwaway96/dejavuln-autoroot

Secondly, after you jailbreak your own TV (ironic on how we use a jailbroken TV to jailbreak another device lol), you will need to follow the following steps:

1.
```
cd /media/internal/downloads
``` 
2.
```
wget https://github.com/llbranco/PPLGPwn/archive/refs/heads/main.zip
```
3.
```
unzip main.zip
```
4.
```
cd PPLGPwn-main
```
5.
```
chmod +x ./start.sh
```
6.
```
./start.sh
```
7.
edit this file to make the script runs on boot
```
/var/lib/webosbrew/startup.sh
```
### Connect your PS4 to your TV through the Ethernet port, and go in your PS4 set up LAN > PPPoE, and the exploit should be working!

!! This exploit is made for TV's with the armv7, I'm unsure if it works on any other different arch, to know your TV chip architecture run ```uname -m``` !!
!! This exploit stage2 runs SiStro load from usb payload !!

## Plans
- Installer ( probably something based on https://github.com/stooged/PI-Pwn installer )
- Start on boot
- Notifications on your tv (config on install)
- Retry on error
- Route TV WiFi to PS4
