DOT="${HOME}/dotfiles"

cloneIfNeeded() {
    if [ ! -d "${DOT}/zsh/${1}/.git" ]; then
        git clone "${2}" "${DOT}/zsh/${1}"
    fi
}

cloneIfNeeded zgen https://github.com/tarjoilija/zgen.git
cloneIfNeeded base16-shell https://github.com/chriskempson/base16-shell.git
cloneIfNeeded zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions.git
cloneIfNeeded powerlevel10k https://github.com/romkatv/powerlevel10k.git

# clean
rm -f ~/.zshrc
rm -f ~/.zprofile

# install
if command -v zsh >/dev/null; then  
else                                 
	require brew
    brew list zsh || brew install zsh
fi                                   

DIR=$(dirname $0:A)

ln -s ${DIR}/zshrc ~/.zshrc
ln -s ${DIR}/zprofile ~/.zprofile
ln -s ${DIR}/p10k.zsh ~/.p10k.zsh

# configure
#[[ $SHELL == "/bin/zsh" ]] || 
chsh -s /bin/zsh
