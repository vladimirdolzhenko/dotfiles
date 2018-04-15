require brew

CASK_APPS=(
	gpgtools
	iterm2
	avast-security
	vlc
	google-chrome
	google-backup-and-sync
	firefox
	telegram
	skype
	whatsapp
	sublime-text
	osxfuse
	evernote
	qbittorrent
	stellarium
	gimp
	inkscape
	android-file-transfer
	plex-media-server
	spotify
	rstudio
	mactex
)

APPS=(
	mas
	mc
	wget
 	pwgen
	p7zip
	dockutil
	encfs
	ntfs-3g
	hexedit
	youtube-dl
	R
)

MAS_APPS=(
	497799835 #Xcode
	715768417 #Microsoft Remote Desktop
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

for app in ${APPS[*]}
do
brew install ${app}
done
brew install ${APPS[*]}

for app in ${MAS_APPS[*]}
do
mas install ${app}
done