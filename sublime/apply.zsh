SUBLIME_CFG_DIR="${HOME}/Library/Application Support/Sublime Text 3/Packages/User/"
DOTFILES_DIR=$(pwd -P)
mkdir -p "${SUBLIME_CFG_DIR}"

ln -sf "${DOTFILES_DIR}/Package Control.sublime-settings" "${SUBLIME_CFG_DIR}"
ln -sf "${DOTFILES_DIR}/Preferences.sublime-settings" "${SUBLIME_CFG_DIR}"
