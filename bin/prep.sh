#!/usr/bin/env bash

# prep.sh
# 
# for cloning config files from github,
# and setting up several things for Lightsail
# (https://raw.github.com/meinside/lightsail-dotfiles/master/bin/prep.sh)
# 
# last update: 2019.07.02.
# 
# by meinside@gmail.com

# colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RESET="\033[0m"

if [ `whoami` == 'meinside' ]; then
	REPOSITORY="git@github.com:meinside/lightsail-dotfiles.git"
else
	REPOSITORY="https://github.com/meinside/lightsail-dotfiles.git"
fi
TMP_DIR="$HOME/configs.tmp"

# clone config files
rm -rf $TMP_DIR
git clone $REPOSITORY $TMP_DIR

# move to $HOME directory
shopt -s dotglob nullglob
mv $TMP_DIR/* $HOME/
rm -rf $TMP_DIR

# re-login for loading configs
echo
echo -e "${RED}*** logout, and login again for reloading environments ***${RESET}"
echo
