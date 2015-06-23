#!/usr/bin/env sh

echo "Instaling the config ..."

echo "Creating the simlynks ... "
# creating the simbolink links
# of the nvimrc config file
ln -f -s -v $(pwd)/nvimrc ~/.nvimrc
# of the nvimrc folder
ln -f -s -v $(pwd)/nvim ~/.nvim
echo "Creating simlynks Done!"


echo ""
echo "You need to run this in your nvim instance :"
echo " :PlugInstall"
echo ""
echo "Afther this you need to run the install_part_2.sh"
echo ""
