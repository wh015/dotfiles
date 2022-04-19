#!/bin/bash

OMZDIR=$(realpath ~)/.oh-my-zsh
[ -d ${OMZDIR} ] || {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}
(cd ${OMZDIR}; git pull)

cp .zshrc ~

read -p "Set zsh as default shell (y/n)?" choice
case "$choice" in
    y|Y ) chsh -s /bin/zsh $(whoami);;
esac

