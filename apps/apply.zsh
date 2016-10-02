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
	telegram
	spotify
)

APPS=(
	mc
	jenv
 	pwgen
	p7zip
	encfs
	ntfs-3g
	hexedit
	youtube-dl
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

brew install ${APPS[*]}
