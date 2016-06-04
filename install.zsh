#!/bin/zsh

# https://github.com/myfreeweb/dotfiles

clear

autoload colors && colors
MSG="${fg_bold[blue]}====>${reset_color}"
INFO="${fg[green]}==>${reset_color}"
WARN="${fg[yellow]}==>${reset_color}"
ERROR="${fg[red]}==>${reset_color}"

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
    osx-privacy
    osx-defaults
    fonts
    tools
    dev
    apps
    mc
    sublime
)

if [[ -n "$@" ]]; then
    MODULES="$@"
fi

for module in $MODULES; do
    if [[ -d "$module" ]]; then
        if [[ -f "$module/apply.zsh" ]]; then
            echo "$MSG Installing module '${fg_bold[white]}$module${reset_color}'"
            (
                cd "$module"
                PWD=$(pwd)
                if source apply.zsh; then
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
