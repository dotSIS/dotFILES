#!/bin/zsh
#
if [ $1 = "l" ]; then
    cd /home/zhy7ne/Projects/GamesPortableSaves
    cp -r /home/zhy7ne/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/SAVEDATA/* ./PPSSPP/
	cp -r /home/zhy7ne/.local/share/Terraria/Players/* ./Terraria/Players/
	cp -r /home/zhy7ne/.local/share/Terraria/Worlds/* ./Terraria/Worlds/
    cp -r /home/zhy7ne/.var/app/org.openttd.OpenTTD/data/openttd/save/* ./OpenTTD/
	if [ $2 = "ps" ]; then
		git add .
		git commit -m "linux commit"
		git push
	elif [ $2 = "pl" ]; then
		git pull
        cp -r ./PPSSPP/* /home/zhy7ne/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/SAVEDATA/
        cp -r ./Terraria/Players/* /home/zhy7ne/.local/share/Terraria/Players/
        cp -r ./Terraria/Worlds/* /home/zhy7ne/.local/share/Terraria/Worlds/
        cp -r ./OpenTTD/* /home/zhy7ne/.var/app/org.openttd.OpenTTD/data/openttd/save/
	else
		echo "Error #1 occured!"
	fi
else
	echo "Error #2 occured!"
fi
