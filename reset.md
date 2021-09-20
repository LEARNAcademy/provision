# Wipe and Reinstall Steps
- Push everything to GitHub
- Turn computer off
- Restart, hold down `command + r` until the apple symbol appears
- When the disk utility menu comes up select Disk Utility, repair or erase a disk
- Select disk on the top left corner
- Click the minus sign on volume, unmount group
- Select parent disk on the top left corner, select erase
- Close out Disk Utility window
- Click Reinstall macOS, follow steps (takes a while) 
- Select country, keyboard setup (US), wifiSet up the computer account
- Install homebrew $ `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- $ `brew install git`
- Clone repo to root directory: `https://github.com/LEARNAcademy/provision.git`
  - If this ^^ step asks you for username or password, then something went wrong, it should just work
- $ `brew bundle --file ~/provision/Brewfile`
- Store all new apps in the doc
- $ `brew services start postgresql`
- $ `createdb`

### Install RVM
- $ `\curl -sSL https://get.rvm.io | bash -s stable --rails`
- This will likely fail and it will give you two commands you'll need to run in the error message they will start with command curl
- Then run the original command: $ `\curl -sSL https://get.rvm.io | bash -s stable --rails`
- Then close out your terminal, restart it and check all your versions
- $ `rvm -v`  should get something that is not a error
- $ `ruby -v`  should be 3.0.something
- $ `rails -v` should be 6.something
- Then test it out and see if you can get a rails app running
