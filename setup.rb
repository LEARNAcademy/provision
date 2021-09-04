# WIP - does not currently run

#!/usr/bin/env ruby

run 'brew bundle --file ~/provision/Brewfile'
run 'brew services start postgresql'
run 'createdb'
run 'cp countries.sql ~/Desktop/countries.sql'
run 'psql -c "create database countries"'
run 'psql countries < ~/Desktop/countries.sql'

def run cmd
  puts cmd
  %x{#{cmd}}
end

# $ ./setup.rb
# possibly need $ chmod +x setup.rb
