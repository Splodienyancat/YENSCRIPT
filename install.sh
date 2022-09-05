echo "$USER"

if [ -d "/usr/bin/yenscript" ]; then
	echo "You already have a directory for yenscript!"
else
        cd ~/YENSCRIPT
#Reads appid to replace in script later
        read -p "Whats your appID on open echange rates?" appid
#Makes bin directory
        sudo mkdir /usr/bin/yenscript
#copies the script to that directory
        sudo cp -r yenscript.sh /usr/bin/yenscript
#Replaces the appID
	cd /usr/bin/yenscript
        sudo sed -i 's/PLACEHOLDER/"$appid"/' yenscript.sh
#Adds latest.json
	sudo wget https://openexchangerates.org/api/latest.json?app_id=$appid
	sudo mv latest.json?app_id=$appid latest.json
fi

cd $HOME
alias='YENSCRIPT/bashrc-append-contents.txt'
if test -f ".bashrc"; then
	echo "bashrc found"
	if grep -q "#ytu alias" ".bashrc"; then
		echo "Ytu is already inside of your bashrc!"
	else
		if grep -q "#ytu alias" ".bashrc"; then
			echo "The alias is already in the bashrc!!"
		else
			read -p "Would like to set up an alias? Y/N" Approval
			if [ "$Approval" == "Y" ] || [ "$Approval" == "y" ]; then
				cat $alias >> .bashrc
			elif [ "$Approval" == "N" ] || [ "$Approval" == "n" ]; then
				echo "Nothing done to bashrc"
			fi
		fi
	fi
else
	echo "Bashrc not fund you need to do alias manually"
fi
