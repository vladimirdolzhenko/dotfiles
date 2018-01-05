require brew-cask

CASK_APPS=(
    java7
    java8
    java
    intellij-idea-ce
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

APPS=(
	gradle
	maven
	git
	mercurial
)
brew install ${APPS[*]}
