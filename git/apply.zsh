require brew

brew tap microsoft/git

APPS=(
    git
    microsoft-git
    git-lfs
)
brew install ${APPS[*]}

# GIT

for CFG in gitconfig gitconfig.jetbrains
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

git lfs install

#scalar register
