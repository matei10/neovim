echo "Installing neovim and custom plugins"
echo ""

echo "Installing Cmake (for YouCompletMe ) :"
sudo apt-get install -y cmake

echo "Install python dependecis ( for neovim ) :"
sudo apt-get install -y python-dev python-pip python3-dev python3-pip

echo "Installing vim :"
sudo apt-get install -y vim

echo "Adding support for adding PPA"
sudo apt-get install -y software-properties-common python-software-properties

./update_upgrade.sh

echo "Insatlling NeoVim :"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


./update_upgrade.sh

echo "Install Ctags (for TagBar)"
sudo apt-get install -y exuberant-ctags

echo ""
echo ""
