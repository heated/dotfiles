function fish_greeting
end

source ~/.config/fish/functions/arch_labs.fish

bind \e\[C forward-single-char   # Complete a single char when pressing right arrow
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/Cellar/flock/0.4.0/bin
# set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x JQ_COLORS '0;31:0;39:0;39:0;39:0;32:1;39:1;39'
alias vim nvim
