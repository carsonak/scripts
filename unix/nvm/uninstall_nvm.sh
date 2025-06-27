#!/usr/bin/sh

nvm_dir="${NVM_DIR:-~/.nvm}"
nvm unload
rm -rf "$nvm_dir"
echo "Remove the following lines from the shell resource config file, i.e '~/.bashrc'"
echo 'export NVM_DIR="$HOME/.nvm"'
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm'
echo '[[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion'
echo
echo "More information at: https://github.com/nvm-sh/nvm?tab=readme-ov-file#uninstalling--removal"
