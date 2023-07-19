#!/bin/zsh
#
if [ $1 = "df" ]; then
	cd /home/zhy7ne/Projects/dotFILES
	if [ $2 = "ps" ]; then
        cp /home/zhy7ne/Downloads/dotSIS-keybinds.txt ./
        cp /home/zhy7ne/.config/picom/picom.conf ./picom/
		cp /home/zhy7ne/.config/kitty/kitty.conf ./kitty/
		cp /home/zhy7ne/.config/rofi/config.rasi ./rofi/
        cp -r /home/zhy7ne/.config/nvim/* ./nvchad/
        cp /home/zhy7ne/.config/tmux/tmux.conf ./tmux/
        cp /home/zhy7ne/.config/tmux/plugins/tmuxifier/layouts/* ./tmuxifier/
		cp /home/zhy7ne/.vimrc ./vim/
		#cp /home/zhy7ne/.config/zentile/config.toml ./zentile/
		cp /home/zhy7ne/.zshrc ./zsh/
		cp /home/zhy7ne/.scripts/.xuckless ./scripts/
		cp /home/zhy7ne/.scripts/.xuckless-default ./scripts/
		cp /home/zhy7ne/.dwm/autostart ./scripts/
		cp /home/zhy7ne/.scripts/.dot.sh ./scripts/
		cp /home/zhy7ne/.scripts/.psp.sh ./scripts/
		cp /home/zhy7ne/.scripts/.ter.sh ./scripts/
        cp /home/zhy7ne/.scripts/.autocommit ./scripts/
        cp /home/zhy7ne/.scripts/.nvim ./scripts/
		git add .
		git commit -m "dotfiles commit"
		git push
	elif [ $2 = "pl" ]; then
		git pull
        cp ./dotSIS-keybinds.txt /home/zhy7ne/Downloads/
        cp ./picom/picom.conf /home/zhy7ne/.config/picom/
		cp ./kitty/kitty.conf /home/zhy7ne/.config/kitty/
		cp ./rofi/config.rasi /home/zhy7ne/.config/rofi/
        cp -r ./nvchad/* /home/zhy7ne/.config/nvim/
        cp ./tmux/tmux.conf /home/zhy7ne/.config/tmux/
        cp ./tmuxifier/* /home/zhy7ne/.config/tmux/plugins/tmuxifier/layouts/
		cp ./vim/.vimrc /home/zhy7ne/
		#cp ./zentile/config.toml /home/zhy7ne/.config/zentile/
		cp ./zsh/.zshrc /home/zhy7ne/
		cp ./scripts/.xuckless /home/zhy7ne/.scripts/
		cp ./scripts/.xuckless-default /home/zhy7ne/.scripts/
		cp ./scripts/autostart /home/zhy7ne/.dwm/
		cp ./scripts/.dot.sh /home/zhy7ne/.scripts/
		cp ./scripts/.psp.sh /home/zhy7ne/.scripts/
		cp ./scripts/.ter.sh /home/zhy7ne/.scripts/
        cp ./scripts/.autocommit /home/zhy7ne/.scripts/
        cp ./scripts/.nvim /home/zhy7ne/.scripts/.nvim-save
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
