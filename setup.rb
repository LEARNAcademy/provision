#!/usr/bin/env ruby

run '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'
run 'brew bundle --file ~/Desktop/brewfile/Brewfile'
run 'psql -c "create database countries"'
run 'psql countries < ~/Desktop/countries.sql'


def run cmd
  puts cmd
  %x{#{cmd}}
end
