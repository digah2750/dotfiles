# brew paths
export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Applications/Ghostty.app/Contents/MacOS
export PATH="/opt/homebrew/sbin:$PATH"

# get rid of annoying deprecation message
export BASH_SILENCE_DEPRECATION_WARNING=1

# Custom line
export PS1="[\u@FlowBook \w]\$ "

# Bash autocompletion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# color commands
alias ls="ls --color=auto"

# history
export HISTSIZE=10000      # Maximum number of commands to remember
export HISTCONTROL=ignoredups  # Avoid duplicates in history
export HISTIGNORE="ls:cd:cd -:pwd"  # Ignore certain commands
shopt -s histappend         # Append to history file instead of overwriting

# Start tmux automatically if not already in a tmux session
if [ -z "$TMUX" ]; then
    brew update
    tmux attach || tmux new-session
fi

# log all commands
export PROMPT_COMMAND='history -a; history -n'

# commands
alias ffind="find . -type f -iname" # ex: ffind "*.txt"
alias dfind="find . -type d -iname" # ex: dfind "project"
alias tm="tmux attach || tmux new-session"
alias ..="cd .."
alias ~="cd ~"
alias mkdir="mkdir -pv"

export EDITOR=nvim
export VISUAL=nvim
