#!/bin/zsh
#
if [ $1 = "df" ]; then
	cd /home/zhy7ne/Projects/dotFILES
	if [ $2 = "ps" ]; then
		cp /home/zhy7ne/.config/kitty/kitty.conf ./kitty/
		cp /home/zhy7ne/.config/rofi/config.rasi ./rofi/
    cp -r /home/zhy7ne/.config/nvim ./nvchad
		cp /home/zhy7ne/.vimrc ./vim/
		#cp /home/zhy7ne/.config/zentile/config.toml ./zentile/
		cp /home/zhy7ne/.zshrc ./zsh/
		cp /home/zhy7ne/.xuckless ./scripts/
		cp /home/zhy7ne/.xuckless-default ./scripts/
		cp /home/zhy7ne/.dwm/autostart ./scripts/
		cp /home/zhy7ne/.dot.sh ./scripts/
		cp /home/zhy7ne/.psp.sh ./scripts/
    cp /home/zhy7ne/.nvim ./scripts/
		git add .
		git commit -m "dotfiles commit"
		git push
	elif [ $2 = "pl" ]; then
		git pull
		cp ./kitty/kitty.conf /home/zhy7ne/.config/kitty/
		cp ./rofi/config.rasi /home/zhy7ne/.config/rofi/
    cp -r ./nvchad /home/zhy7ne/.config/nvim
		cp ./vim/.vimrc /home/zhy7ne/
		#cp ./zentile/config.toml /home/zhy7ne/.config/zentile/
		cp ./zsh/.zshrc /home/zhy7ne/
		cp ./scripts/.xuckless /home/zhy7ne/
		cp ./scripts/.xuckless-default /home/zhy7ne/
		cp ./scripts/autostart /home/zhy7ne/.dwm/
		cp ./scripts/.dot.sh /home/zhy7ne/
		cp ./scripts/.psp.sh /home/zhy7ne/
    cp ./scripts/.nvim /home/zhy7ne/.nvim-save
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
