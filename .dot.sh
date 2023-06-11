#!/bin/zsh
#
if [ $1 = "df" ]; then
	cd /home/zhy7ne/Projects/dotFILES
	if [ $2 = "ps" ]; then
		cp /home/zhy7ne/.config/kitty/kitty.conf ./kitty/
		cp /home/zhy7ne/.config/rofi/config.rasi ./rofi/
		cp /home/zhy7ne/.vimrc ./vim/
		#cp /home/zhy7ne/.config/zentile/config.toml ./zentile/
		cp /home/zhy7ne/.zshrc ./zsh/
		cp /home/zhy7ne/.xuckless ./
		cp /home/zhy7ne/.xuckless-default ./
		cp /home/zhy7ne/.dwm/autostart ./
		cp /home/zhy7ne/.dot.sh ./
		cp /home/zhy7ne/.psp.sh ./
		git add .
		git commit -m "dotfiles commit"
		git push
	elif [ $2 = "pl" ]; then
		git pull
		cp ./kitty/kitty.conf /home/zhy7ne/.config/kitty/
		cp ./rofi/config.rasi /home/zhy7ne/.config/rofi/
		cp ./vim/.vimrc /home/zhy7ne/
		#cp ./zentile/config.toml /home/zhy7ne/.config/zentile/
		cp ./zsh/.zshrc /home/zhy7ne/
		cp ./.xuckless /home/zhy7ne/
		cp ./.xuckless-default /home/zhy7ne/
		cp ./autostart /home/zhy7ne/.dwm/
		cp ./.dot.sh /home/zhy7ne/
		cp ./.psp.sh /home/zhy7ne/
	else
		echo "Error #1 occured!"
	fi
elif [ $1 = "xt" ]; then
	cd /home/zhy7ne/Projects/dotFILES/xuckless-tools
	if [ $2 = "ps" ]; then
		cp -r /home/zhy7ne/Configs/xuckless-tools/* ./
		git add .
		git commit -m "xuckless commit"
		git push
	elif [ $2 = "pl" ]; then
		cd /home/zhy7ne/Configs/xuckless-tools-save
		git pull
	else
		echo "Error #2 occured!"
	fi
else
	echo "Error #3 occured!"
fi
