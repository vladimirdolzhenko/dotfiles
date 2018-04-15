###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool false

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

###############################################################################
## Dock applications list
###############################################################################
dockutil --remove all --no-restart

dockutil --no-restart --add /Applications/iTerm.app
dockutil --no-restart --add /Applications/Google\ Chrome.app
dockutil --no-restart --add /Applications/Sublime\ Text.app
dockutil --no-restart --add /Applications/IntelliJ\ IDEA\ CE.app
dockutil --no-restart --add /Applications/Evernote.app
dockutil --no-restart --add /Applications/Telegram.app
dockutil --no-restart --add /Applications/WhatsApp.app
dockutil --no-restart --add /Applications/zoom.us.app
dockutil --no-restart --add /Applications/Calendar.app
dockutil --no-restart --add /Applications/Slack.app
dockutil --no-restart --add /Applications/VLC.app
dockutil --no-restart --add /Applications/Dictionary.app
dockutil --no-restart --add /Applications/Spotify.app
dockutil --no-restart --add /Applications/Launchpad.app
dockutil --no-restart --add /Applications/App\ Store.app
dockutil --no-restart --add /Applications/System\ Preferences.app
dockutil --no-restart --add /Applications/Preview.app

#dockutil --add '/Applications' --view list --no-restart
dockutil --add '~/Downloads' --view auto