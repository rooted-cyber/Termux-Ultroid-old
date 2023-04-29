ac() {
cd ~/Ultroid > /dev/null 2>&1
if [ -e startup ];then
bash startup
else
printf "\n\033[1;92m First install ultroid\n"
fi
}
cd /
if [ -e home ];then
ac
else
printf "\n\033[1;92m First start ubuntu !!!\n"
fi