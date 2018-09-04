require brew

CASK_APPS=(
	zoomus
	slack
	vagrant
	virtualbox
    java-beta
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

APPS=(
	vault
)
brew install ${APPS[*]}
