#!/bin/zsh

COMPUTER_NAME="Vladimir’s Elastic MacBook Pro"
HOST_NAME=$(echo $COMPUTER_NAME | sed "s, ,-,g;s,[^-a-zA-Z],,g")

# https://github.com/myfreeweb/dotfiles

clear

autoload colors && colors
MSG="${fg_bold[blue]}====>${reset_color}"
INFO="${fg[green]}==>${reset_color}"
WARN="${fg[yellow]}==>${reset_color}"
ERROR="${fg[red]}==>${reset_color}"

is-macos(){
    if [[ "$OSTYPE" =~ ^darwin ]]; then
      return 0
    fi
    return 1
}

is-executable(){
    if [ $commands[$*] ]; then
        return 0
    fi
    return 1
}

require() {
    if [ ! $commands[$*] ]; then
        echo "$ERROR '$*' is not installed or not a command')"
        exit 1
    fi
}

# load modules

MODULES=(
    homebrew
    git
    nvim
    zsh
    bash
    apps
    dev
    osx
    fonts
    tools
    elastic
    mc
    sublime
)

if [[ -n "$@" ]]; then
    MODULES="$@"
fi

for m in $MODULES; do
    module=$(echo $m | sed -E "s,(.*)(/.*),\1,g")
    module_params=$(echo $m | cut -d'/' -s -f2)
    if [[ -d "$module" ]]; then
        if [[ -f "$module/apply.zsh" ]]; then
            echo "$MSG Installing module '${fg_bold[white]}$module${reset_color}'"
            (
                cd "$module"
                PWD=$(pwd)
                if source apply.zsh "${module_params}" ; then
                    echo "$INFO Module '$module' has been installed"
                else
                    echo "$ERROR Module '$module' failed"
                fi
            )
        else
            echo "$ERROR '$module' is not a module (missing apply.zsh)"
        fi
    else
        echo "$ERROR '$module' is not a module directory"
    fi
done
