#!/bin/bash
   
rm -r ~/.vimrc  #remove the ./vimrc file in home directory
sed "s|source ~/.dotfiles/bashrc_custom||g"  #remove the line
rm -d .TRASH #remove the trash directory

