require brew

export COMPUTER_NAME="Vladimir’s JetBrains MacBook Pro"

DOTFILES_DIR=$(pwd -P)
ln -sf "${DOTFILES_DIR}/zshrc.jetbrains" "${HOME}/.zshrc.custom"

brew tap adoptopenjdk/openjdk

CASK_APPS=(
	slack
	tunnelblick
	java6
	caskroom/versions/zulu7
	#caskroom/versions/zulu8
	adoptopenjdk9
	adoptopenjdk10
	adoptopenjdk11
	oracle-jdk
	eclipse-ide
	docker

	rider
	dotnet-sdk
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

brew untap adoptopenjdk/openjdk

APPS=(
	vault
)
brew install ${APPS[*]}
