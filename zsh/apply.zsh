require brew

# git clone https://github.com/chriskempson/base16-shell.git
# git clone https://github.com/tarjoilija/zgen.git

# clean
rm -f ~/.zshrc
rm -f ~/.zprofile

# install
brew install zsh

# configure
[[ $SHELL == "/bin/zsh" ]] || chsh -s /bin/zsh

DIR=$(dirname $0:A)

ln -s ${DIR}/zshrc ~/.zshrc
ln -s ${DIR}/zprofile ~/.zprofile
