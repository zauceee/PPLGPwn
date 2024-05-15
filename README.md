# PPLGPwn (llbranco mod) only for fw1100
based on: https://github.com/zauceee/PPLGPwn
A method of executing PPPwn through rooted LGTV's.
This method is using the C++ version of PPPwn, made by xfangxfang, the link to the repo it's this one:
https://github.com/xfangfang/PPPwn_cpp

# Notice
me and zauceee (aka kodeine) decided to work and focus on just one project, we have the same goals and working together we will have much more to offer than separately.

If you liked the project, consider following our most updated version at:
https://github.com/zauceee/PPLGPwn

I will keep this project open but only as an option for just 1 firmware (11.00).

## I installed this version. Is there any compatibility issue with switching to the version from his repository?
absolutely not, you can change if you wish.

After all, zauceee (aka kodeine) and I will be working together on the same repository

## If you liked my project and want to help me, consider buying me a coffee
<a href='https://ko-fi.com/J3J4Y2DQ4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi2.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a> [![Support me on Patreon](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dllbranco%26type%3Dpatrons&style=flat-square)](https://patreon.com/llbranco)

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

you can follow this step-by-step guide to root your tv and install PPLGPwn on your TV

[![guide](https://img.youtube.com/vi/zYoesrUsIj8/0.jpg)](https://www.youtube.com/watch?v=zYoesrUsIj8)

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
to make it run on the boot
edit this file to make the script runs on boot
```
/var/lib/webosbrew/startup.sh
```
8.
insert this lines in the last line (or after sshd server right under the "fi" if you prefer) save and reboot
```
cd /media/internal/downloads/PPLGPwn-main
./start.sh
```

```
alternative
```

9.
One command Installer (beta)
if you are brave (or lazy) you can test our beta installer (no guarantee)
```
wget https://raw.githubusercontent.com/llbranco/PPLGPwn/master/install.sh && chmod +x ./install.sh && ./install.sh
```



### Connect your PS4 to your TV through the Ethernet port, and go in your PS4 set up LAN > PPPoE, and the exploit should be working!

!! This exploit is made for TV's with the armv7, I'm unsure if it works on any other different arch, to know your TV chip architecture run ```uname -m``` !!
!! This exploit stage2 runs SiStro load from usb payload !!

## Plans ( https://github.com/zauceee/PPLGPwn )
- Installer ( probably something based on https://github.com/stooged/PI-Pwn installer )
- Start on boot
- Notifications on your tv (config on install)
- Retry on error
- Route TV WiFi to PS4
