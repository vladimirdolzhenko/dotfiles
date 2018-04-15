# Set your screen to lock as soon as the screensaver starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

disable_agent() { launchctl unload -w /System/Library/LaunchAgents/${1}.plist 2>/dev/null }

disable_agent com.apple.CallHistoryPluginHelper
disable_agent com.apple.CallHistorySyncHelper
disable_agent com.apple.telephonyutilities.callservicesd
disable_agent com.apple.gamed
