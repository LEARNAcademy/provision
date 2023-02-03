# Provisioning LEARN Machines

### What is in this repo
- Brewfile with all the technologies that can be installed with homebrew and applications that can be installed with cask on a new machine
- Countries database for SQL lessons
- Ruby script to automate the install process

### How to set up a new machine
- reset computer
- install Homebrew
- $ `brew install git`
- clone repo to root directory
- $ `brew bundle --file ~/provision/Brewfile`
- store all new apps in the doc
- install rvm
- $ `brew services start postgresql`
- $ `createdb`
- $ `cp countries.sql ~/Desktop/countries.sql`
- $ `psql -c "create database countries"`
- $ `psql countries < ~/Desktop/countries.sql`
- log in to PGAdmin and create a new object, run a test query
- create a test React app
- create a test Rails app

### Specifying a Ruby version
- install rvm
- $ `rvm install 3.2.0`
- $ `rvm --default use 3.2.0`
- $ `gen update --system`
- $ `gem install rails`

```bash
brew services start postgresql; createdb; cp countries.sql ~/Desktop/countries.sql; psql -c "create database countries"; psql countries < ~/Desktop/countries.sql
```

### How we got here
- create repo with a file called Brewfile
- add brew installs and cask installs
- [Homebrew Brewfile docs](https://homebrew-file.readthedocs.io/en/latest/getting_started.html)
