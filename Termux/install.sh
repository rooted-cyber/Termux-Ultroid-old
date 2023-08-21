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
cd ~/Termux*/Termux
pip install -r req*
cenv
}
git clone https://github.com/rooted-cyber/Termux-file
cd Term!*
dpkg  -i *deb
cd ~
git clone https://github.com/TeamUltroid/Ultroid
ab
