# Vladimir’s dotfiles

## MacOSX
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

## Update

To update specific _module_, e.g. **dev**:
```bash
./install.zsh dev
```

or update specific _submodule_, e.g. **dock** of _module_ **osx**:

```bash
./install.zsh osx/dock
```

## Windows

To run you need admin permissions.

`install.bat` installs `choco` , a set of useful apps like `far`, `conemu`, development tools (git, java, gradle, maven, intellij idea), fonts (FiraCode, SourceCodeProd) and WindowsSubsystemLinux (with Ubuntu 18.04 LTS).

### Git-free install

```
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;Invoke-WebRequest -Uri http://github.com/vladimirdolzhenko/dotfiles/archive/master.zip -OutFile dotfiles.zip -UseBasicParsing; Expand-Archive dotfiles.zip -DestinationPath ."
cd dotfiles-master
install.bat
```

## Thanks to…

* [@akowal](https://github.com/akowal) and his initial _dotfiles_
* https://github.com/mathiasbynens/dotfiles
* https://github.com/myfreeweb/dotfiles
* and some of other [github dotfiles](https://dotfiles.github.io/)
