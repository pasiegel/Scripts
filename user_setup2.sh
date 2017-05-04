#!/bin/bash

pulseaudio --start
#COPY CONFIG FILES
unzip rice.zip
rsync -va --delete-after rice/ ~

echo "Congratulations. Installation complete."
echo ""
echo "Now Reboot!"
echo ""
