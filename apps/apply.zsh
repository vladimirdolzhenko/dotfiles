require brew-cask

CASK_APPS=(
	gpgtools
    iterm2 
    avast
    vlc
    google-chrome
    google-drive
    skype
    adium 
    sublime-text
    osxfuse
    evernote
    java
    qbittorrent
    gimp
    inkscape
)

APPS=(
	mc
	pwgen
	encfs
	ntfs-3g
)

for app in ${CASK_APPS[*]} 
do
brew cask install --appdir="/Applications" ${app}
done

brew install ${APPS[*]}
