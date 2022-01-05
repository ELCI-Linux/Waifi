#! /bin/bash/
helper='Waifi'
versnum='1.1'

	waifi=$(zenity --list --checklist \
		--title="$helper $versnum" \
		--height=180 --width=500 \
		--text="Please select the network scanner(s) you would like to install:" \
		--column="Selected" 	--column="Applications" 	--column="License"	--column="Method" \
				""		"Linssid"		"GNU Public License V3"		"apt" \
				""		"Gnome Network Manager"	"GNU Public License V3"		"apt")

	gnm=$(echo $waifi | grep -c "Gnome Network Manager")
	lins=$(echo $waifi | grep -c "Linssid")

	if [ $gnm -gt '0' ]; then
	sudo apt-get install network-manager -y
	fi

	if [ $lins -gt '0' ]; then
	sudo add-apt-repository ppa:wseverin/ppa -y
	sudo apt-get update -y
	sudo apt-get install linssid -y
	fi
