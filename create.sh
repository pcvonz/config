#!/bin/bash          
rm -rf ~/.vim || echo ".vim doesn't exist"
rm  ~/.vimrc
ln -s ~/vim/.vimrc ~/.vimrc || echo ".vimrc already exists"
ln -s ~/vim/.vim ~/.vim || echo "Symbolic link already exists"
