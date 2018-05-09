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
    gradle-completion
    maven
    git
    mercurial
    asciinema
)
brew install ${APPS[*]}

# Jenv
eval "$(jenv init -)"
jenv enable-plugin export

# GIT

for CFG in gitconfig gitconfig.elastic
do
echo "${INFO} linking $CFG" && ln -sf $(pwd)/${CFG} "${HOME}/.${CFG}"
done

# SSH
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
