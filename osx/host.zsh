# Set computer name (as done via System Preferences → Sharing)
echo "${INFO} Setting computer name to '${COMPUTER_NAME}'"
sudo scutil --set ComputerName "$COMPUTER_NAME"

echo "${INFO} Setting host name to '${HOST_NAME}'"
sudo scutil --set HostName "$HOST_NAME"
sudo scutil --set LocalHostName "$HOST_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$HOST_NAME"
