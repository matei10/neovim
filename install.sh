#!/usr/bin/env sh

./update_upgrade.sh

# neovim
./nvim_install/install_neovim.sh

#tmux
./nvim_install/install_tmux.sh

./update_upgrade.sh

echo "Creating the simlynks ... "

./nvim_instal/link_nvim.sh
./tmux_instal/link_tmux.sh

echo "Creating simlynks Done!"

echo "Creare de alias!"
./nvim_install/alias.sh
./tmux_install/alias.sh

./help.sh
