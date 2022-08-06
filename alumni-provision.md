# Setup for a New Mac

This doc contains the instructions to install technologies used at LEARN on a new Mac.

This setup will install the following:

#### Apps
- Google Chrome
- VSCode text editor
- Postman
- Slack
- Zoom

#### Technologies
- git
- yarn
- rvm
- latest Ruby version
- Rails

---

### Homebrew
[Homebrew](https://brew.sh/) is a package manager for Mac. It can install most apps and technologies. Homebrew will ensure proper installation processes as well as give you access to brew commands. Common commands include listing all the apps/tech as well as a single command update.

$ `brew list` - lists all apps/tech managed by Homebrew  
$ `brew doctor` - diagnoses any problems  
$ `brew update` - updates all apps/tech

Install Homebrew in terminal: $ `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Note: If you have a computer with an M1 chip, the homebrew command will give you two additional commands to run at the end of its installation.

#### Applications
- $ `brew install --cask install google-chrome`
- $ `brew install --cask slack`
- $ `brew install --cask postman`
- $ `brew install --cask visual-studio-code`
- $ `brew install --cask zoom`
- $ `brew install --cask pgadmin4`

#### Technologies
- $ `brew install git`
- $ `brew install yarn`
- $ `brew install zsh`
- $ `brew install node`
- $ `brew install postgres`
- $ `brew services start postgresql`
- $ `createdb`

### Ruby Version Manager
 [RVM](https://rvm.io/rvm/install) allows you to run multiple versions of Ruby on your machine.

$ `\curl -sSL https://get.rvm.io | bash -s stable --rails`

This command often fails (for me) the first time. Follow the instructions in the terminal to run the proper setup commands.

**After installing the Ruby Version Manager CLOSE AND REOPEN TERMINAL!**

To ensure rvm install properly, run:  
$ `rvm -v`

Should see:
```
rvm 1.29.10 (latest) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]
```
