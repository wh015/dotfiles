#!/bin/sh

VIMDIR=$(realpath ~)/.vim

lightline() {
    local LIGHTLINE_REPO="https://github.com/itchyny/lightline.vim"
    local LIGHTLINE_PATH="${VIMDIR}/pack/plugins/start/lightline"

    [ -d ${LIGHTLINE_PATH} ] || {
        git clone ${LIGHTLINE_REPO} ${LIGHTLINE_PATH}
    }
    (cd ${LIGHTLINE_PATH} && git pull)
}

nord() {
    local NORD_REPO="https://github.com/arcticicestudio/nord-vim.git"
    local NORD_PATH=$(mktemp -d)

    git clone ${NORD_REPO} ${NORD_PATH}

    mkdir -p ${VIMDIR}/autoload/ ${VIMDIR}/colors
    cp -arf ${NORD_PATH}/colors/* ${VIMDIR}/colors/
    cp -arf ${NORD_PATH}/autoload/* ${VIMDIR}/autoload/

    rm -rf ${NORD_PATH}
}


cp -f .vimrc ~/

lightline
nord

