#!/bin/bash
# Here i was trying to Auto mate how User accounts can be created in Linux
for((i=0;i<2;i++)){
	echo "Enter your Choice"
	read choice

	if [ $choice -eq 1 ]
	then
		echo "Enter UserName: "
		read uname

		echo "Enter Password: "
		read pass

		sudo adduser  $uname

		echo "$uname : $pass " | sudo chpasswd
	else
		break
	fi
}
