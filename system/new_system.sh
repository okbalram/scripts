#!/bin/bash

echo "Updating the system...this might take a while"""
sudo dnf -y update

echo "Install packages"
sudo dnf install -y xchat-gnome NetworkManager-openvpn NetworkManager-openvpn-gnome smartctl git git-review

echo "Install oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "VIM time!"
sudo dnf install vim ctags
wget https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc
echo "Plugin 'andviro/flake8-vim'" >> $HOME/.vimrc
vim -E -u $HOME/.vimrc +qall

echo "System going to reboot in 5 seconds..."
sleep 5
reboot