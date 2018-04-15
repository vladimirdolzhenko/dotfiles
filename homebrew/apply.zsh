if ! is-macos ; then
  echo "$ERROR MacOsX is required for Homebrew"
  exit 1
fi

if ! is-executable brew ; then
	echo "$INFO Installing Homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install caskroom/cask/brew-cask
	brew tap caskroom/versions
	brew tap homebrew/fuse
	brew tap homebrew/science
	brew tap buo/cask-upgrade
fi

brew update && brew upgrade && brew cleanup && brew cu -a && brew cask cleanup
