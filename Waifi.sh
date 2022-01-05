#! /bin/bash/

helper='Waifi'
versnum='1.0'

	waifi=$(zenity --list --checklist \
		--title="$helper $versnum" \
		--width=350 \
		--text="Please select the network scanner(s) you would like to install:" \
		--column="Selected" 	--column="Applications" 	--column="License"	--column="Method" \
				""		"Linssid"		"GNU Public License V3"		"apt")

	lins=$(echo $waifi | grep -c "Linssid")






	if [ $lins -gt '0' ]; then
	sudo add-apt-repository ppa:wseverin/ppa -y
	sudo apt-get update -y
	sudo apt-get install linssid -y
	fi
