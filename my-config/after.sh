#!/bin/bash

sudo apt-get update
sudo apt-get install -y zip unzip sed
curl -s http://get.sdkman.io | zsh
source '/home/vagrant/.sdkman/bin/sdkman-init.sh' && yes | sdk install java 8.0.272-zulu
source '/home/vagrant/.sdkman/bin/sdkman-init.sh' && yes | sdk install maven
source '/home/vagrant/.sdkman/bin/sdkman-init.sh' && yes | sdk install gradle

mkdir -p /home/vagrant/code
mkdir -p /home/vagrant/.vim/pack/local/start
cd /home/vagrant/.vim/pack/local/start
git clone https://github.com/editorconfig/editorconfig-vim.git
git clone git://github.com/wakatime/vim-wakatime.git



