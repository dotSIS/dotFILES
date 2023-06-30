#!/bin/zsh
#
if [ $1 = "l" ]; then
	cd /home/zhy7ne/.local/share/Terraria
	if [ $2 = "ps" ]; then
		git add .
		git commit -m "linux commit"
		git push
	elif [ $2 = "pl" ]; then
		git pull
	else
		echo "Error #1 occured!"
	fi
else
	echo "Error #2 occured!"
fi
