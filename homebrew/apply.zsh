ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew update && brew upgrade && brew cleanup
brew cask update && brew cask cleanup