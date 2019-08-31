require brew

export COMPUTER_NAME="Vladimir’s JetBrains MacBook Pro"

DOTFILES_DIR=$(pwd -P)
ln -sf "${DOTFILES_DIR}/zshrc.jetbrains" "${HOME}/.zshrc.custom"

brew tap adoptopenjdk/openjdk
brew tap jetbrains/utils

CASK_APPS=(
	jetbrains-toolbox

	#rider
	#intellij-idea

	slack
	tunnelblick

	java6
	caskroom/versions/zulu7
	#caskroom/versions/zulu8
	adoptopenjdk9
	adoptopenjdk10
	adoptopenjdk11
	oracle-jdk
	jetbrains/utils/jb-openjdk11

	eclipse-ide
	jprofiler
	yourkit-java-profiler
	docker

	dotnet-sdk
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

brew untap adoptopenjdk/openjdk

APPS=(
	vault
	jetbrains/utils/bunches
)
brew install ${APPS[*]}
