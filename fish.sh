#!/usr/bin/bash

PS3='Select your system for fish configs : '
colorschemes=("Ubuntu  >= 20" "Ferdora 󰣛" "Arch 󰣇 ( 😎 BTW 😎 )" "Debian " "Mac Os (🍺 🍻Home brew🍻 🍺)")
fish_dir=~/.config/fish

select option in "${colorschemes[@]}"; do
	case $option in
	"Ubuntu  >= 20")
		if [ ! -d "$fish_dir" ]; then
			sudo apt upadte -y
			sudo apt install fish -y
		else
			cp -rf ./.config/fish/config.fish
			cp -rf $fish_dir/
		fi
		exit
		;;
	"Ferdora 󰣛")
		if [ ! -d "$fish_dir" ]; then
			sudo dnf upadte -y
			sudo dnf install fish -y
		else
			cp -rf ./.config/fish/config.fish
			cp -rf $fish_dir/
		fi
		exit
		;;
	"Arch 󰣇 ( 😎 BTW 😎 )")
		if [ ! -d "$fish_dir" ]; then
			sudo pacman -Sy -y
			sudo pacman -S fish -y
		else
			cp -rf ./.config/fish/config.fish
			cp -rf $fish_dir/
		fi
		exit
		;;
	"Debian ")
		if [ ! -d "$fish_dir" ]; then
			sudo apt-get update -y
			sudo apt-get install fish -y
		else
			cp -rf ./.config/fish/config.fish
			cp -rf $fish_dir/
		fi
		exit
		;;
	"Mac Os (🍺 🍻Home brew🍻 🍺)")
		if [ ! -d "$fish_dir" ]; then
			brew install fish
		else
			cp -rf ./.config/fish/config.fish
			cp -rf $fish_dir/
		fi
		exit
		;;
	*) echo "invalid option $REPLY" ;;
	esac
done
