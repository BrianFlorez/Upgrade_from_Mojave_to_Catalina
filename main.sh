#!/bin/bash
version=$(sw_vers | grep ProductVersion | cut -d':' -f2 | tr -d ' ')
if [ $version == "10.15.7" ]
then
#Execute code/script for Catalina OS only
   #Install any security updates avaiable
   echo "Installing all Secutiry softwareupdates"
   sudo softwareupdate -ia --restart
else
	 if [ $version == "10.14.6" ]
	 then
     #Execute code/script for Mojave Only
     echo "Downloading and Installing macOS Catalina from Applications"
     sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/startosinstall --agreetolicense --forcequitapps --nointeraction
    fi
fi
