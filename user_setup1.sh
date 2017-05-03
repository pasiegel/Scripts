#!/bin/bash

wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
tar -xvzf packer.tar.gz
cd packer
makepkg --noconfirm -si
cd ..
rm -rf packer/
rm packer.tar.gz

packer --noconfirm -S cli-visualizer neomutt i3-gaps ttf-font-awesome vim-pathogen vim-live-latex-preview projectm-pulseaudio taffy neofetch i3lock tamzen-font-git speedometer nodejs-markdown-pdf lightdm-slick-greeter nomachine-enterprise-client

bash user_setup2.sh
