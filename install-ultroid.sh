cenv() {
touch .env
random
echo "Creating .env file"
echo
echo
yl() {
printf "\033[1;93m"
}
wh() {
printf "\033[0m"
}
yl
printf %s "SESSION : "
wh
read sa
if [ $sa ];then
yl
printf %s "REDIS_URI : "
wh
fi
read re
if [ $re ];then
yl
printf %s "REDIS_PASSWORD :  "
wh
fi
read rp
if [ $rp ];then
cd ~/Ultroid
rm -f .env > /dev/null 2>&1
cat >> .env << EOF
API_ID=3704772
API_HASH=b8e50a035abb851c0dd424e14cac4c06
SESSION=$sa
REDIS_URI=$re
REDIS_PASSWORD=$rp
EOF
chmod 700 .env
chmod -R 700 *
chmod -R 700 .*
fi
}
ab() {
if [ -e Termux-Ultroid ];then
cd Termux*
cp random /bin
chmod 777 /bin/random
bash rr*
bash rs*
cd ~/Ultroid
printf "\n\n press Enter to fill .env \033[1;92m .Env\n"
cenv
else
printf "\n\033[1;92m First clone Termux-Ultroid\n"
fi
}
chu() {
cd ~
if [ -e Ultroid ];then
cd ~/Ultroid
bash startup
fi
}
cd /
if [ -e home ];then
printf "\n \033[1;92m Installing Ultroid\n"
cd ~
apt update
apt upgrade
apt install sudo python3 python3-pip wget git nano screen
python3 -m pip install --upgrade pip
chu
cd ~
git clone https://github.com/TeamUltroid/Ultroid
ab
else
printf "\n\033[1;92m First install ubuntu \033[0m bash install-ubuntu.sh\n"
exit
fi
