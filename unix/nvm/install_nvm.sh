#!/usr/bin/bash

INSTALL_SCRIPT_URL='https://raw.githubusercontent.com/nvm-sh/nvm/refs/heads/master/install.sh'
INSTALL_SCRIPT_FILE="./install.sh"

if ! cd "$(dirname "$0")"
then
    echo "ERROR: Could not change directory to '$0'" > /dev/stderr
    exit
fi

wget --time-stamping "$INSTALL_SCRIPT_URL"
chmod +x "$INSTALL_SCRIPT_FILE"
bash "$INSTALL_SCRIPT_FILE"
echo
echo "More information at: https://github.com/nvm-sh/nvm#install--update-script"
