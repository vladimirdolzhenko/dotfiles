require brew

# clean
rm -rf ~/.nvim
rm -f ~/.nvimrc

# install
brew tap neovim/neovim
brew install --HEAD neovim

# configure
ln -fsn ${PWD}/nvimrc ~/.nvimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.nvim/bundle/Vundle.vim
nvim +PluginInstall +qall
