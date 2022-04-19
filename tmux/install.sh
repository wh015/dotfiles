#!/bin/bash +x

TMUXDIR=$(realpath ~)/.tmux/plugins

tpm() {
    local REPO="https://github.com/tmux-plugins/tpm"

    [ -d ${TMUXDIR}/tpm ] || {
        mkdir -p ${TMUXDIR}
        git clone ${REPO} ${TMUXDIR}/tpm
    }

    cd ${TMUXDIR}/tpm
    git pull
    ./bin/install_plugins
    cd $OLDPWD
}

cp .tmux.conf ~
tpm
