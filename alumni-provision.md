# Setup for a New Mac

This doc contains the instructions to install technologies used at LEARN on a new Mac.

### Homebrew
[ Homebrew ](https://brew.sh/) is a package manager for Mac. It can install most apps and technologies. Homebrew will ensure proper installation processes as well as give you access to brew commands. Common commands include listing all the apps/tech as well as a single command update.

`$ brew list` - lists all apps/tech managed by Homebrew  
`$ brew doctor` - diagnoses any problems  
`$ brew update` - updates all apps/tech

Install Homebrew in terminal: `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

#### Applications
- $ brew cask install google-chrome
- $ brew cask install slack
- $ brew cask install postman
- $ brew cask install atom
- $ brew cask install visual-studio-code
- $ brew cask install zoom
- $ brew cask install pgadmin4

#### Technologies
- $ brew install git
- $ brew install yarn
- $ brew install zsh
- $ brew install gpg
- $ brew install postgres
- $ brew services start postgresql
- $ createdb

### Ruby Version Manager
[ RVM ](https://rvm.io/rvm/install) allows you to run multiple versions of Ruby on your machine.

`$ gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`

`$ \curl -sSL https://get.rvm.io | bash -s stable --rails`

This command often fails (for me) the first time. Follow the instructions in the terminal to run the proper setup commands.

**After installing the Ruby Version Manager CLOSE AND REOPEN TERMINAL!**

To ensure rvm install properly, run:  
$ rvm -v

Should see:
```
rvm 1.29.10 (latest) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]
```

This setup will install the following:

#### Apps
- Google Chrome
- Atom text editor
- VS Code text editor
- Postman
- Slack
- Zoom

#### Technologies
- git
- yarn
- rvm
- latest Ruby version
- Rails
