# iterm2
#defaults delete com.googlecode.iterm2

# Open the app so the preference files get initialized
#open -g "/Applications/iTerm.app" && sleep 2

# Disable warning when quitting
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

#sleep 2 && osascript -e 'quit app "iTerm"'

# Show tab bar in FullScreen
defaults write com.googlecode.iterm2 ShowFullScreenTabBar -bool true


# Apply Solarized Theme in default profile
for color in \
  "Ansi 0 Color" "Ansi 1 Color" "Ansi 2 Color" "Ansi 3 Color" "Ansi 4 Color" \
  "Ansi 5 Color" "Ansi 6 Color" "Ansi 7 Color" "Ansi 8 Color" "Ansi 9 Color" \
  "Ansi 10 Color" "Ansi 11 Color" "Ansi 12 Color" "Ansi 13 Color" "Ansi 14 Color" \
  "Ansi 15 Color" "Background Color" "Bold Color" "Cursor Color" "Cursor Text Color" \
  "Foreground Color" "Selected Text Color" "Selection Color"; do

  /usr/libexec/PlistBuddy -c "Delete :'New Bookmarks':0:'$color'" ~/Library/Preferences/com.googlecode.iterm2.plist
done

PLIST_BUDDY_COMMANDS=(
    "Set 'New Bookmarks':0:'Normal Font' 'InputMono-Light 14'"
    "Set 'New Bookmarks':0:'Non Ascii Font' 'InputMono-Light 14'"
    "Set 'New Bookmarks':0:'Use Non-ASCII Font' true"
    "Set 'New Bookmarks':0:'Silence Bell' true"
    "Set 'New Bookmarks':0:'Columns' 140"
    "Set 'New Bookmarks':0:'Rows' 40"
    "Set 'Badge Text' '\\\\(user.badge)'"
    "Add 'Custom Color Presets':'Solarized Dark' dict"
    "Merge '$(pwd)/iterm2/Solarized Dark.itermcolors' 'Custom Color Presets':'Solarized Dark'"
    "Merge '$(pwd)/iterm2/Solarized Dark.itermcolors' 'New Bookmarks':0"
)

DOTFILES_DIR=$(pwd -P)
# thanks to Adrian Cooney - https://medium.com/@adrian_cooney/iterm-tip-add-custom-badges-on-a-per-directory-basis-1d54dfc6b6e4
ln -sf "${DOTFILES_DIR}/badges" "${HOME}/.badges"

for command in $PLIST_BUDDY_COMMANDS
do
    /usr/libexec/PlistBuddy -c "$command" ~/Library/Preferences/com.googlecode.iTerm2.plist
done
