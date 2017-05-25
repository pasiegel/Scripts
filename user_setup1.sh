#!/bin/bash
#build packer for aur support
wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
tar -xvzf packer.tar.gz
cd packer
makepkg --noconfirm -si
cd ..
rm -rf packer/
rm packer.tar.gz
# install required aurs
packer --noconfirm -S cli-visualizer neomutt i3-gaps ttf-font-awesome vim-pathogen vim-live-latex-preview projectm-pulseaudio taffy neofetch i3lock tamzen-font-git speedometer nodejs-markdown-pdf lightdm-slick-greeter nomachine-enterprise-client discord vmware-horizon-client blueman
# run rsync for config files
bash user_setup2.sh
