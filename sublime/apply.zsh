SUBLIME_CFG_DIR = "${HOME}/Library/Application Support/Sublime Text 2/Packages/User/"
mkdir -p "${SUBLIME_CFG_DIR}"

ln -sf "Package Control.sublime-settings" "${SUBLIME_CFG_DIR}"
ln -sf "Preferences.sublime-settings" "${SUBLIME_CFG_DIR}"


