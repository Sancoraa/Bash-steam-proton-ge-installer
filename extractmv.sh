#!/bin/sh

if [[ -d ~/.steam/root/compatibilitytools.d/ ]]
then
	echo "Installing, please wait."
	tar -xf GE-*.tar.gz -C ~/.steam/root/compatibilitytools.d/
	rm *.tar.gz
	echo "Done ! Restart Steam for the changes to apply."
	exit
else
	while true; do
		read -p "~/.steam/root/compatibilitytools.d/ does not exist, do you want to create it ? (y/n) " yn
		case $yn in
			[Yy]* ) mkdir ~/.steam/root/compatibilitytools.d;;
			[Nn]* ) exit;;
			* ) echo "Please answer yes or no.";;
		esac
		echo "Directory has been created, please rerun the program."
	done
fi