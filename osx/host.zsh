COMPUTER_NAME="Vladimir’s Elastic MacBook Pro"
HOST_NAME=$(echo $COMPUTER_NAME | sed "s, ,-,g;s,[^-a-zA-Z],,g")

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "$COMPUTER_NAME"
sudo scutil --set HostName "$HOST_NAME"
sudo scutil --set LocalHostName "$HOST_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$HOST_NAME"