# Provisioning LEARN Machines

Updated: March 2023

### What is in this repo

- Brewfile with all the technologies that can be installed with homebrew and applications that can be installed with brew cask on a new machine
- Countries database for PostgreSQL challenges

### How to set up a new machine

- reset computer
- install Homebrew
- $ `brew install git`
- clone repo to root directory
- $ `brew bundle --file ~/provision/Brewfile`
- store all new apps in the doc
- install rvm

```bash
brew services start postgresql; createdb; cp countries.sql ~/Desktop/countries.sql; psql -c "create database countries"; psql countries < ~/Desktop/countries.sql
```

- log in to PGAdmin and create a new object, run a test query
- create a test React app
- create a test Rails app

### Specifying a Ruby version

- install rvm
- $ `rvm install 3.2.0`
- $ `rvm --default use 3.2.0`
- $ `gem update --system`
- $ `gem install rails`

### Docs

- [Homebrew Brewfile docs](https://homebrew-file.readthedocs.io/en/latest/getting_started.html)
