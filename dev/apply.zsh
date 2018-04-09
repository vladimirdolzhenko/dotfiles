require brew

CASK_APPS=(
	freetype
    java8
    java9
    java
    intellij-idea-ce
)

for app in ${CASK_APPS[*]}
do
brew cask install --appdir="/Applications" ${app}
done

APPS=(
	jenv
	gradle
	maven
	git
	mercurial
)
brew install ${APPS[*]}

jenv enable-plugin export

GIT_USERNAME=$(git config --global user.name)
if [ -z "${GIT_USERNAME}" ]; then
	git config --global user.name "Vladimir Dolzhenko" 
	echo "configured git user name"
fi

GIT_EMAIL=$(git config --global user.email)
if [ -z "${GIT_EMAIL}" ]; then
	git config --global user.email "vladimir.dolzhenko@gmail.com"
	echo "configured git user email"
fi
