#!/bin/bash
pause=1

while [ $pause == 1 ]
do
	echo "What would you like your username to be?"
	echo ""
	echo "Do NOT pick the name of an already existing user. This will overwrite their files!"
	echo ""
	echo "Pick a new username:"
	read USER
	read -p  "You have chosen $USER for your name. Are you sure? [y/N]" yn
	case $yn in
		[Yy]* ) pause=0 ;;
		[yes]* ) pause=0 ;;
		[Yes]* ) pause=0 ;;
	esac

done

useradd -m -g wheel -s /bin/bash $USER
passwd $USER
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

pacman --noconfrim --needed -R vte3
pacman --noconfirm --needed -S base-devel xorg-xinit xorg-server termite feh ffmpeg pulseaudio pulseaudio-alsa arandr pavucontrol pamixer mpv wget rofi python-pip vim w3m ranger mediainfo poppler highlight tmux calcurse htop libqalculate newsbeuter moc network-manager-applet networkmanager firefox qutebrowser imagemagick transmission-cli atool libcaca xcompmgr transset-df blender pinta gimp texlive-most texlive-lang markdown mupdf evince audacity vim-latexsuite rsync youtube-dl youtube-viewer openssh syncthing noto-fonts-cjk noto-fonts-emoji cups screenfetch scrot unzip unrar biber ntfs-3g deepin-terminal zip irssi rdesktop nautilus

systemctl enable NetworkManager
systemctl start NetworkManager

pip install netifaces psutil

#wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
#tar -xvzf packer.tar.gz
#cd packer
#makepkg --noconfirm -si
#cd ..
#rm -rf packer/
#rm packer.tar.gz

#packer --noconfirm -S cli-visualizer neomutt i3-gaps ttf-font-awesome vim-pathogen vim-live-latex-preview projectm-pulseaudio taffy neofetch i3lock tamzen-font-git speedometer nodejs-markdown-pdf





cp user_setup2.sh /home/$USER/user_setup2.sh
cp user_setup1.sh /home/$USER/user_setup1.sh
cp rice.zip /home/$USER/rice.zip
echo "root system configuration complete. Run user_setup1.sh as user"
#cd /home/$USER/
su $USER
