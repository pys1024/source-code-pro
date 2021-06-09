#!/usr/bin/env bash


set -e 

info=$(uname -a)

if [[ $info =~ "Linux" ]]; then
    if [ x"-a" = x"$1" ]; then
        # install for all users
        sudo cp OTF/ /usr/share/fonts/Source-code-pro -rf
        sudo fc-cache
    else
        # install for yourself
        mkdir -p ~/.fonts
        cp OTF/* ~/.fonts
        fc-cache -f -v
    fi
else
    cp TTF/* /c/Windows/Fonts -rf
fi
