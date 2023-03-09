# Setup for a New Mac

Updated: March 2023

This doc contains the instructions to install technologies used at LEARN on a new Mac.

This setup will install the following:

#### Applications

- Google Chrome
- VSCode text editor
- Postman
- Slack
- Zoom
- PGAdmin

#### Technologies

- git
- yarn
- rvm - Ruby version manager
- latest Ruby version
- Rails

---

### Homebrew

[Homebrew](https://brew.sh/) is a package manager for Mac. It can install most apps and technologies. Homebrew will ensure proper installation processes as well as give you access to brew commands. Common commands include listing all the apps and tech as well as update commands.

$ `brew list` - lists all apps and tech managed by Homebrew  
$ `brew doctor` - diagnoses any problems  
$ `brew update` - updates all apps and tech

Install Homebrew in terminal: $ `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Note: If you have a computer with an M1 chip, the homebrew command will give you two additional commands to run at the end of its installation.

### Application Installs

$ `brew install --cask install google-chrome`  
$ `brew install --cask slack`  
$ `brew install --cask postman`  
$ `brew install --cask visual-studio-code`  
$ `brew install --cask zoom`  
$ `brew install --cask pgadmin4`

### Technology Installs

$ `brew install git`  
$ `brew install yarn`  
$ `brew install zsh`  
$ `brew install node`  
$ `brew install postgresql@14`  
$ `brew services start postgresql`  
$ `createdb`

### Ruby Version Manager

[RVM](https://rvm.io/rvm/install) allows you to run multiple versions of Ruby on your machine.

$ `\curl -sSL https://get.rvm.io | bash -s stable --rails`

This command often fails (for me) the first time. Follow the instructions in the terminal to run the proper setup commands.

**After installing the Ruby Version Manager CLOSE AND REOPEN TERMINAL!**

To ensure proper installation of rvm, run:  
$ `rvm -v`

Should see:

```
rvm 1.29.10 (latest) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]
```

To ensure proper installation of Ruby and Ruby on Rails, run:  
$ `ruby -v`  
$ `rails -v `

### Specifying a global Ruby version

If you want a Ruby version for your whole computer that is different than the default version installed by rvm use the following commands:

- install rvm
- $ `rvm install 3.2.0`
- $ `rvm --default use 3.2.0`
- $ `gem update --system`
- $ `gem install rails`
