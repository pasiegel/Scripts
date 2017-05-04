#!/bin/bash

pulseaudio --start
#COPY CONFIG FILES
unzip rice.zip
rsync -va --delete-after rice/ ~

echo "Congratulations. Installation complete."
echo ""
echo "Now Reboot!"
echo ""
#cho "If you are using a login manager, you should be able to log off and log back in in i3 as this user for the same effect."
