require brew-cask

# java
APPS=(
	gradle
	maven
	git
	mercurial
)
brew install ${APPS[*]}
brew cask install --appdir="/Applications" intellij-idea-ce
