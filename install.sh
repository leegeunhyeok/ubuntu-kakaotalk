#!/usr/bin bash
sudo apt-get -y install wget
sudo apt-get -y install cabextract
sudo apt-get -y install wine-stable
export WINEARCH=win32
export WINEPREFIX=~/.wine
wine
wineboot
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks -q --show-progress
echo "Winetricks download success!"
chmod 777 winetricks
./winetricks
echo "1. Select the default wineprefix CHECK!"
echo "2. Install a Windows DLL or component CHECK!"
echo "3. gdiplus, msxml6, riched30, wmp9 ALL CHECK!"
rm -r winetricks

echo "Kakaotalk install executable file download"
wget http://app.pc.kakao.com/talk/win32/KakaoTalk_Setup.exe -q --show-progress