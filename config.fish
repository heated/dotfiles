# do $ fish_config, pick "ayu Mirage" for color
# set terminal bg to example bg

function fish_greeting
end

fish_add_path /opt/local/bin
fish_add_path /opt/local/sbin 
fish_add_path /Users/edward/bin 
fish_add_path /Users/edward/.cargo/bin 
fish_add_path /usr/local/sbin
fish_add_path /usr/local/opt/ruby/bin
fish_add_path /usr/local/lib/ruby/gems/3.1.0/bin
fish_add_path /usr/local/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/bin

set -x GOPATH ~/projects/go
set -x HOMEBREW_NO_AUTO_UPDATE 1
