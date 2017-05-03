#!/bin/bash

pulseaudio --start
# old packer cmds
#wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
#tar -xvzf packer.tar.gz
#cd packer
#makepkg --noconfirm -si
#cd ..
#rm -rf packer/
#rm packer.tar.gz

#packer --noconfirm -S cli-visualizer neomutt i3-gaps ttf-font-awesome vim-pathogen vim-live-latex-preview projectm-pulseaudio taffy neofetch i3lock tamzen-font-git speedometer nodejs-markdown-pdf
#COPY CONFIG FILES
unzip rice.zip
rsync -va --delete-after rice/ ~

echo "Congratulations. Installation complete."
echo ""
echo "Now Reboot!"
echo ""
#cho "If you are using a login manager, you should be able to log off and log back in in i3 as this user for the same effect."
