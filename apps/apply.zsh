require brew

brew tap gromgit/fuse

CASK_APPS=(
	iterm2
	#osxfuse
	macfuse
	mtmr

	#avast-security
	protonvpn

	google-chrome
	firefox
	brave-browser

	google-drive

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
	#plex-media-server
	spotify
	kap

	#rstudio
	#mactex
	#xquartz
	#inkscape
)

APPS=(
	fzf

	mas
	mc
	wget
	pwgen
	p7zip
	rmtrash
	dockutil
	encfs-mac
	ntfs-3g
	librsvg
	freetype
	hexedit
	ffmpeg
	#libav
	youtube-dl
	#R

	garmin-express
	coreutils
)

MAS_APPS=(
	497799835	#Xcode
	715768417	#Microsoft Remote Desktop
	1474276998	#HP Smart
)

for app in ${APPS[*]}
do
brew install ${app}
done

for app in ${CASK_APPS[*]}
do
brew install --cask --appdir="/Applications" ${app}
done

for app in ${MAS_APPS[*]}
do
mas install ${app}
done

xcode-select --install

# iterm2 integration
zsh -c "$(curl -L https://iterm2.com/misc/install_shell_integration.sh)"

# fzf integration
/usr/local/opt/fzf/install

# MTMR
MTMR_CFG_DIR="${HOME}/Library/Application Support/MTMR/"
DOTFILES_DIR=$(pwd -P)
mkdir -p "${MTMR_CFG_DIR}"
ln -sf "${DOTFILES_DIR}/mtmr/items.json" "${MTMR_CFG_DIR}"
