#!/bin/bash

OS= 'uname' #put the uname into the variable

if [[ $OS = "Linus" ]]; then #check if variable = Linus
	exit #if yes then run exit command
else
	&> linuxsetup.log #if no then add the error in the linuxsetup.log
fi

mkdir -p ~/.TRASH

FILE=~/.vimrc
if [ -e "$FILE" ]; then #if the .vimrc file in home directory exists
	mv ~/.vimrc ~/.bup_vimrc #yes then rename and add complete announce into the linuxsetup.log
	echo "Complete change name from .vimrc to .bup_vimrc" >> linuxsetup.log
fi

cat ~/.dotfiles/etc/vimrc > ~/.vimrc #print out what vimrc have into the file .vimrc in home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #add the line into ~/bashrc file
