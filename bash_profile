# prompt arrangement
export PS1="\[\033[36m\]\w\[\033[0;32m\]\$(git_branch)\[\033[0m\]$ "

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# terminal color codes
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# color and trailing slash for directories
alias ls='ls -GFh'

# reload bash profile
alias sbp="source ~/.bash_profile"

# open github in browser
alias github=$'open `git config --get remote.origin.url | awk -F: \'{ print"https://github.com/"$2}\'`'

# version management
export NODENV_VERSION=12.13.1
export NODENV_ROOT=~/.nodenv
export PATH="$NODENV_ROOT/versions/$NODENV_VERSION/bin:$PATH"

export PATH="$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"

# 
export ERL_AFLAGS="-kernel shell_history enabled"

verbose_sourcer() {
  if [[ -r "$1" ]] && [[ -f "$1" ]]; then
    source "$1"
  else
    echo "¯\_(ツ)_/¯"
  fi
}

export -f verbose_sourcer

verbose_sourcer ~/.dotfiles/personal
