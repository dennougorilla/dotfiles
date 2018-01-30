#!/bin/bash

chmod 755 *
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -s ${HOME}/dotfiles/${f} ${HOME}/${f}
done
ln -s ${HOME}/dotfiles/dein.toml ${HOME}/dein.toml
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
