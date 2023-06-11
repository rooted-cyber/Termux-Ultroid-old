printf "\n \033[1;92m Installing Ultroid\n"
cd ~
apt update
apt upgrade
apt install python3 python3-pip wget git nano screen
python3 -m pip install --upgrade pip
git clone https://github.com/TeamUltroid/Ultroid
cd Ultroid
pip install -r req*
pip install -r res*/st*/opt*
