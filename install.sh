#!/usr/bin/env sh

echo "Updating the system :"
sudo apt-get update
sudo apt-get -y upgrade 

echo "Installing neovim and custom plugins"

echo "Installing Cmake (for YouCompletMe ) :"
sudo apt-get install -y cmake

echo "Install python dependecis ( for neovim ) :"
sudo apt-get install -y python-dev python-pip python3-dev python3-pip

echo "Installing vim :"
sudo apt-get install -y vim

echo "Adding support for adding PPA"
sudo apt-get install -y software-properties-common python-software-properties

echo ""
echo ""

echo "Updating the system :"
sudo apt-get update
sudo apt-get -y upgrade 

echo ""
echo ""

echo "Insatlling NeoVim :"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

echo ""
echo ""

echo "Updating the system :"
sudo apt-get update
sudo apt-get -y upgrade 

echo ""
echo ""

echo "Install Ctags (for TagBar)"
sudo apt-get install -y exuberant-ctags

echo ""
echo ""

echo "Updating the system :"
sudo apt-get update
sudo apt-get -y upgrade 

echo ""
echo ""


echo "Creating the simlynks ... "
# creating the simbolink links
# of the nvimrc config file
# ln -f -s -v $(pwd)/nvimrc ~/.config/nvimrc
# of the nvimrc folder
ln -f -s -v $(pwd)/nvim ~/.config/nvim
echo "Creating simlynks Done!"


echo ""
echo "You need to run this in your nvim instance :"
echo " :PlugInstall"
