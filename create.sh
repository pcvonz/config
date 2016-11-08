#!/bin/bash          
rm -rf ~/.vim || echo ".vim doesn't exist"
rm  ~/.vimrc
ln -s ~/config/.vimrc ~/.vimrc || echo ".vimrc already exists"
ln -s ~/config/.vim ~/.vim || echo "Symbolic link already exists"
ln -s ~/config/.tmux.conf ~/.tmux.conf || echo "tmux conf already exists"

while true; do
    read -p "Append settings to your bashrc?" yn
    case $yn in
        [Yy]* ) echo "alias tmux=\"TERM=screen-256color-bce tmux\"" >> ~/.bashrc; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
