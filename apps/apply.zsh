require brew

CASK_APPS=(
	iterm2
	osxfuse
	mtmr

	avast-security
	protonvpn

	google-chrome
	firefox
	brave-browser

	google-backup-and-sync

	telegram
	skype
	whatsapp

	sublime-text
	evernote
	qbittorrent
	stellarium
	gimp
	android-file-transfer

	vlc
	plex-media-server
	spotify
	kap

	rstudio
	mactex
	xquartz
	inkscape
)

APPS=(
	mas
	mc
	wget
	pwgen
	p7zip
	rmtrash
	dockutil
	encfs
	ntfs-3g
	librsvg
	freetype
	hexedit
	ffmpeg
	libav
	youtube-dl
	R

	homebrew/cask-drivers/tomtom-sports-connect
)

MAS_APPS=(
	497799835 #Xcode
	715768417 #Microsoft Remote Desktop
)

for app in ${APPS[*]}
do
brew install ${app}
done

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

for app in ${MAS_APPS[*]}
do
mas install ${app}
done

# iterm2 integration
zsh -c "$(curl -L https://iterm2.com/misc/install_shell_integration.sh)"

# MTMR
MTMR_CFG_DIR="${HOME}/Library/Application Support/MTMR/"
DOTFILES_DIR=$(pwd -P)
mkdir -p "${MTMR_CFG_DIR}"
ln -sf "${DOTFILES_DIR}/mtmr/items.json" "${MTMR_CFG_DIR}"
