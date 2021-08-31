require brew

export COMPUTER_NAME="Vladimir’s JetBrains MacBook Pro"

DOTFILES_DIR=$(pwd -P)
ln -sf "${DOTFILES_DIR}/zshrc.jetbrains" "${HOME}/.zshrc.custom"

for tap in adoptopenjdk/openjdk jetbrains/utils isen-ng/dotnet-sdk-versions elastic/tap
do
	brew tap $tap
done

CASK_APPS=(
	jetbrains-toolbox

	#rider
	#intellij-idea

	slack
	tunnelblick

	java6
	homebrew/cask-versions/zulu7
	homebrew/cask-versions/corretto8
	corretto
	corretto11
	oracle-jdk
	jetbrains/utils/jb-openjdk11

	eclipse-ide
	jprofiler
	yourkit-java-profiler
	docker

	elastic/tap/elasticsearch-full
	elastic/tap/kibana-full

	dotnet-sdk
	dotnet-sdk2-2-400
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
