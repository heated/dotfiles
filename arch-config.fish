function fish_greeting
end

source ~/.config/fish/functions/arch_labs.fish

bind \e\[C forward-single-char   # Complete a single char when pressing right arrow
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/Cellar/flock/0.4.0/bin
# set -x HOMEBREW_NO_AUTO_UPDATE 1
# set -x HOMEBREW_NO_ENV_HINTS 1
set -x JQ_COLORS '0;31:0;39:0;39:0;39:0;32:1;39:1;39'
alias vim=nvim
alias urldecode='python3 -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1]))"'

alias gb='command git branch --sort=committerdate --format="%(HEAD) (%(color:green)%(committerdate:relative)%(color:reset)) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) - %(authorname)"'

true "
alias gs='command git status'
alias ga='command git add'
alias gc='command git checkout'
alias gst='command git stash'
alias gd='command git diff'
alias gl='command git log'
alias gsh='command git show'
alias gca='command git commit --amend'
alias gfm='command git fetch; command git checkout origin/master'
alias gp='command git push'

function gr
    command git restore $argv
    gs
end

function gcn
    if contains -- --amend $argv
        echo 'use gca instead'
    else
        command git commit $argv
    end
end

function gf
    if contains -- master $argv
        echo 'use gfm instead'
    else
        command git fetch; command git checkout origin/$argv
    end
end

function git
    switch $argv[1]
    case 'status'
        echo 'use gs instead'
    case 'add'
        echo 'use ga instead'
    case 'checkout'
        echo 'use gc instead'
    case 'stash'
        echo 'use gst instead'
    case 'diff'
        echo 'use gd instead'
    case 'log'
        echo 'use gl instead'
    case 'restore'
        echo 'use gr instead'
    case 'show'
        echo 'use gsh instead'
    case 'commit'
        echo 'use gcn instead'
    case 'fetch'
        echo 'use gf instead'
    case 'push'
        echo 'use gp instead'
    case '*'
        command git $argv
    end
end
"