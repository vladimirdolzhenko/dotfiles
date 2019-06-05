require brew

brew tap adoptopenjdk/openjdk

CASK_APPS=(
	slack
	java6
	caskroom/versions/zulu7
	#caskroom/versions/zulu8
	adoptopenjdk9
	adoptopenjdk10
	adoptopenjdk11
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

brew untap adoptopenjdk/openjdk

# APPS=()
# brew install ${APPS[*]}
