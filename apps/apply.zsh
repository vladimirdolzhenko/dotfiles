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
    stellarium
    gimp
    inkscape
    android-file-transfer
    plex-media-server
    plex-home-theater
)

APPS=(
	mc
 	pwgen
    p7zip
	encfs
	ntfs-3g
)

for app in ${CASK_APPS[*]} 
do
brew cask install --appdir="/Applications" ${app}
done

brew install ${APPS[*]}
