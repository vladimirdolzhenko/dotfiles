require brew

# clean
rm -f ~/.zshrc
rm -f ~/.zprofile

# install
brew install zsh

# configure
[[ $SHELL == "/bin/zsh" ]] || chsh -s /bin/zsh
ln -s ${PWD}/zshrc ~/.zshrc
ln -s ${PWD}/zprofile ~/.zprofile
