# Provisioning LEARN Machines

### What is in this repo
- Brewfile with all the technologies that can be installed with homebrew and applications that can be installed with cask on a new machine
- Countries database for SQL lessons
- Ruby script to automate the install process


### How to set up a new machine
- Wipe clean
- Install homebrew
- $ brew install git
- Clone repo to root directory
- $ brew bundle --file ~/provision/Brewfile
- Store all new apps in the doc
- Install rvm
- $ brew services start postgresql
- $ createdb
- $ cp countries.sql ~/Desktop/countries.sql
- $ psql -c "create database countries"
- $ psql countries < ~/Desktop/countries.sql
- Log in to PGAdmin and create a new object, run a test query
- Create a test React app
- Create a test Rails app

```
brew services start postgresql; createdb; cp countries.sql ~/Desktop/countries.sql; psql -c "create database countries"; psql countries < ~/Desktop/countries.sql
```


### How we got here
- Create repo with a file called Brewfile
- Add brew installs and cask installs
- [Homebrew Brewfile docs](https://homebrew-file.readthedocs.io/en/latest/getting_started.html)
