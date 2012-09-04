#!/bin/bash

git submodule init
git submodule update

if [ -f ~/.vimrc ]
then
	read -e -p "Do you want to backup your original .vimrc file? (y/n)" RESP
	if [ "$RESP" = "y" ]; then
		mv ~/.vimrc ~/.vimrc.backup
	else
		rm -f ~/.vimrc
	fi
fi
ln -s ~/.vim/.vimrc ~/.vimrc
