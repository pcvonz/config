#!/bin/bash          
rm -rf ~/.vim || echo ".vim doesn't exist"
rm  ~/.vimrc
ln -s ~/config/.vimrc ~/.config/nvim/init.vim || echo ".vimrc already exists"
ln -s ~/config/.vim ~/.config/nvim/init.vim || echo "Symbolic link already exists"
ln -s ~/config/.tmux.conf ~/.tmux.conf || echo "tmux conf already exists"

rm -rf ~/.nvim || echo ".vim doesn't exist"
rm  ~/.nvimrc
ln -s ~/config/.nvimrc ~/.nvimrc || echo ".vimrc already exists"
ln -s ~/config/.nvim ~/.nvim || echo "Symbolic link already exists"
ln -s ~/config/.tmux.conf ~/.tmux.conf || echo "tmux conf already exists"

while true; do
    read -p "Append settings to your zshrc?" yn
    case $yn in
        [Yy]* ) echo "git config --global core.editor 'nvr --remote-wait-silent'" >> ~/.zshrc; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
