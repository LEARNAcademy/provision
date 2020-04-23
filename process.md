# Provisioning LEARN Machines

### What is in this repo
- Brewfile with all the technologies that can be installed with homebrew and applications that can be installed with cask on a new machine
- Countries database for SQL lessons
- Ruby script to automate the install process


### How to set up a new machine
- Wipe clean
- Clone repo to home directory
- $ ./setup.rb
- possibly need $ chmod +x setup.rb - will edit after testing
- install nvm
- install rvm
- $ gem install rails

### How we got here
- Create repo with a file called Brefile
- Add brew installs and cask installs
- [Homebrew Brewfile docs](https://homebrew-file.readthedocs.io/en/latest/getting_started.html)
