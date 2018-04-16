# Vladimir’s dotfiles

### Using Git and the bootstrap script

You can clone the repository wherever you want. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/vladimirdolzhenko/dotfiles.git && cd dotfiles && source install.zsh
```

To update, `cd ~/dotfiles` repository and then:

```bash
source install.zsh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd && mkdir dotfiles && cd dotfiles && curl -L https://github.com/vladimirdolzhenko/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,LICENSE}
```

```bash
source install.zsh
```

## Thanks to…

* [@akowal](https://github.com/akowal) and his initial _dotfiles_
* https://github.com/mathiasbynens/dotfiles
* https://github.com/myfreeweb/dotfiles
* and some of other [github dotfiles](https://dotfiles.github.io/)
