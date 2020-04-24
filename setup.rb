#!/usr/bin/env ruby

run 'brew bundle --file ~/provision/Brewfile'
run 'psql -c "create database countries"'
run 'psql countries < ~/Desktop/countries.sql'


def run cmd
  puts cmd
  %x{#{cmd}}
end
