require brew

CASK_APPS=(
	gpgtools
	iterm2
	avast-security
	vlc
	google-chrome
	google-backup-and-sync
	firefox
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
	telegram
	spotify
	rstudio
	mactex
)

APPS=(
	mas
	mc
	jenv
 	pwgen
	p7zip
	encfs
	ntfs-3g
	hexedit
	youtube-dl
	R
)

MAS_APPS=(
	497799835
	715768417
)

brew install ${APPS[*]}

for app in ${MAS_APPS[*]}
do
mas install ${app}
done

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done




