require brew

CASK_APPS=(
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
	freetype
	asciinema
)
brew install ${APPS[*]}

jenv enable-plugin export

git_username=$(git config --global user.name)
git_email=$(git config --global user.email)

if [ -z "${git_username}" ]; then
	git config --global user.name "${GIT_USERNAME}" 
	echo "${INFO} configured git user name"
else 
	echo "${INFO} git user name is configured"
fi

if [ -z "${git_email}" ]; then
	git config --global user.email "${GIT_EMAIL}"
	echo "${INFO} configured git user email"
else
	echo "${INFO} git user email is configured"
fi

if [ ! -d ~/.ssh  ]; then
	mkdir ~/.ssh
	echo "${INFO} created ssh folder ..."
fi

if [ ! -f ~/.ssh/id_rsa ]; then
	echo "${INFO} generating ssh key ..."
	ssh-keygen -t rsa -C "${EMAIL}"
else
	echo "${INFO} ssh key is configured"
fi
