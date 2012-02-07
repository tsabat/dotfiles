#! /bin/bash
CUR_PATH=/home/vagrant/dotfiles
ln -s $CUR_PATH/vim/.vim /home/vagrant/.vim
ln -s $CUR_PATH/vim/.vimrc /home/vagrant/.vimrc
git submodule update --init

git config --global user.name "Timothy Sabat"
git config --global user.email timothy.sabat@gmail.com
git config --global core.editor 'vim -f'
