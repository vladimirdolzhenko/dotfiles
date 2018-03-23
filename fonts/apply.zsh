require brew

brew tap caskroom/fonts
FONTS=(
	font-inconsolata 
	font-input 
	font-source-code-pro 
	font-fira-code 
	font-anonymous-pro 
	font-awesome-terminal-fonts 
	font-fantasque-sans-mono 
	#font-sauce-code-powerline
)

for app in ${FONTS[*]}
do
brew cask install ${app}
done
