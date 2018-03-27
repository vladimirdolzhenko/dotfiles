ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap homebrew/fuse
brew tap homebrew/science
brew tap buo/cask-upgrade
brew update && brew upgrade && brew cleanup && brew cu -a && brew cask cleanup
