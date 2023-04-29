ab() {
if [ -e Termux-Ultroid ];then
cd Termux*
pip install -r req*
cd ~/Ultroid
printf "\n\n press Enter to edit \033[1;92m .Env\n"
nano .env
else
printf "\n\033[1;92m First clone Termux-Ultroid\n"
fi
}
cd /
if [ -e home ];then
printf "\n \033[1;92m Installing Ultroid\n"
cd ~
apt update
apt upgrade
apt install sudo python3 python3-pip wget git nano screen
git clone https://github.com/TeamUltroid/Ultroid
ab
else
printf "\n\033[1;92m First install ubuntu then clone this repo in ubuntu then start \033[1;92m bash install-ultroid.sh\n"
exit
fi
