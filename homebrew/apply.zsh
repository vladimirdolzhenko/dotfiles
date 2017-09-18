ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap homebrew/fuse
brew tap homebrew/science
brew update && brew upgrade && brew cleanup
brew cask update && brew cask cleanup
