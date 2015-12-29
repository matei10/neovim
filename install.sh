#!/usr/bin/env sh

./update_upgrade.sh

./nvim_install/install_neovim.sh

./nvim_install/install_tmux.sh

./update_upgrade.sh



./update_upgrade.sh

echo "Creating the simlynks ... "

./nvim_instal/link_nvim.sh

./tmux_instal/link_tmux.sh

echo "Creating simlynks Done!"


./help.sh
