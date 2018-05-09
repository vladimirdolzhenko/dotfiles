require brew

brew install git

# GIT

for CFG in gitconfig gitconfig.elastic
do
echo "${INFO} linking $CFG" && ln -sf $(pwd)/${CFG} "${HOME}/.${CFG}"
done

git config --global branch.autosetuprebase always
git config --global pull.rebase true
git config --global color.ui auto
git config --global log.decorate full
git config --global push.default simple
git config --global credential.helper osxkeychain
git config --global core.editor nvim
