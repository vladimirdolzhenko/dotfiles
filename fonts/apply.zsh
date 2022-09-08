require brew

brew tap homebrew/cask-fonts
FONTS=(
	font-jetbrains-mono
	font-inconsolata
	font-input
	font-source-code-pro
	font-fira-code
	font-anonymous-pro
	font-awesome-terminal-fonts
	font-fantasque-sans-mono
	font-iosevka
	#font-sauce-code-powerline
)

for app in ${FONTS[*]}
do
brew install --cask ${app}
done
