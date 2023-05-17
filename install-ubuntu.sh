apt update
apt upgrade
apt install wget proot python
wget https://raw.githubusercontent.com/rooted-cyber/Anlinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh
cat >> $PREFIX/bin/sub << EOF
#!/data/data/com.termux/files/usr/bin/bash
cd ~/Te*Ult*
bash sta*ubu*
EOF
chmod 777 $PREFIX/bin/sub
bash ubuntu.sh
printf "\n \033[1;92m Now you can star ubuntu Type:\033[1;93m sub\n"
