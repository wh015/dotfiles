#!/bin/bash

menu() {
    declare -a items=( "exit" "git" "tmux" "vim" "zsh" )

    for i in "${!items[@]}"
    do
        echo "${i}) ${items[$i]}"
    done

    read -p "Select: " choice

    [ "exit" == "${items[$choice]}" ] && {
        return 1
    }

    [ -n "${items[$choice]}" ] && {
        (cd ${items[$choice]} && ./install.sh)
        wait
    }

    return 0
}

ret=0
while [ $ret == 0 ]; do
    menu
    ret=$?
done
