MODULE="$(basename $PWD)"

SUB_MODULES=(
   defaults
   privacy
   keyboard
   host
   dock
)

if [[ -n "$@" ]]; then
    SUB_MODULES="$@"
fi

for sub_module in $SUB_MODULES; do
	FILE="${sub_module}.zsh"
    if [[ -f "$FILE" ]]; then
            echo "$MSG Applying module '${fg_bold[white]}$MODULE / ${sub_module}${reset_color}'"
            (
                PWD=$(pwd)
                if source $FILE; then
                    echo "$INFO Module '$MODULE / ${sub_module}' has been applied"
                else
                    echo "$ERROR Module $MODULE / '${sub_module}' failed"
                fi
            )
    else
        echo "$ERROR $MODULE / '${sub_module}' is not found"
    fi
done


for app in Dock Finder SystemUIServer
do
killall $app
done