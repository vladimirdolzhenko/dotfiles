require brew

export COMPUTER_NAME="Vladimir’s JetBrains MacBook Pro"

DOTFILES_DIR=$(pwd -P)
ln -sf "${DOTFILES_DIR}/zshrc.jetbrains" "${HOME}/.zshrc.custom"

for tap in adoptopenjdk/openjdk jetbrains/utils isen-ng/dotnet-sdk-versions elastic/tap
do
	brew tap $tap
done

CASK_APPS=(
	1password

	#rider
	#intellij-idea

	slack

	homebrew/cask-versions/zulu7
	homebrew/cask-versions/corretto8
	homebrew/cask-versions/corretto11
	corretto
	oracle-jdk

	cloudflare-warp

	eclipse-ide
	#jprofiler
	yourkit-java-profiler
	#docker

	#elastic/tap/elasticsearch-full
	#elastic/tap/kibana-full

	#dotnet-sdk
	#dotnet-sdk2-2-400
)

for app in ${CASK_APPS[*]}
do
brew install --cask --appdir="/Applications" ${app}
done

brew untap adoptopenjdk/openjdk

APPS=(
	npm
	vault
)
brew install ${APPS[*]}
