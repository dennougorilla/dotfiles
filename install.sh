#!/bin/bash

#set Vundle
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

chmod 755 *
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -s ${HOME}/dotfiles/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
