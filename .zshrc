# Theme
ZSH_THEME="nani"

# Import oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Vars
export PATH=/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:/usr/local/share/npm/bin:/Users/tonyganch/Stash/depot_tools:$PATH
# Make vim the default editor
export EDITOR="vim"
# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"
# Tomcat
export CATALINA_HOME=/Users/tonyganch/Servers/apache-tomcat-7.0.41

# Ruby/Rails/RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin
alias rvc='rvm current'
alias dbc='rake db:create'
alias rake='bundle exec rake'

# NVM
alias nom='npm'
if [ -s ~/.nvm/nvm.sh ]; then
    source ~/.nvm/nvm.sh
    # Node bin path
    BP=$(which node)
    # Node path
    NP=${BP%bin/node}
    # Modules path
    export NODE_PATH="${NP}lib/node_modules"
fi

# Encoding
export LC_ALL="en_US.UTF-8"

# Source configs
alias src='source ~/.zshrc'

# tmux
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
alias tm='tmux'
alias tmn='tmux new'
alias tma='tmux attach -t'
alias tmk='tmux kill-session -t'
alias tmo='tmuxinator open'
alias tms='mux start'

# Vim
alias v='vim'
alias zs='vim ~/GitHub/tg/dotfiles/.zshrc'
alias :q=exit

# Git
alias g='git'
alias ga='git add'
alias gam='git commit --amend'
alias gb='git branch'
alias gc='git commit'
alias gch='git cherry-pick'
alias gd='git difftool'
alias gdiff='git diff'
alias gl='git log --graph --pretty=format:"%Cgreen%h %Cblue%ar %Creset%s"'
alias go='git checkout'
alias gpp='git pull -p'
alias gpsh='git push origin'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gs='git status'
alias gcb='git rev-parse --abbrev-ref HEAD'
function gf() {git commit --fixup="$1"}
function gr() {git rebase -i --autosquash HEAD~"$1"}
function greset() {git reset --hard HEAD~"$1"}
function gpr() {git fetch origin pull/"$1"/head:pr/"$1" && git checkout pr/"$1"}

# Directories
alias ~='cd'
alias ~gh='cd ~/GitHub'
alias ~comb='cd ~/GitHub/csscomb'
alias ~sho='cd ~/GitHub/shower'
alias ~forks='cd ~/GitHub/forks'
alias ~node='cd ~/GitHub/node'
alias ~rails='cd ~/GitHub/rails'
alias ~tg='cd ~/GitHub/tg'

# Yandex
source ~/.yarc

# Functions

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# Create a data URL from a file
function dataurl() {
    local mimeType=$(file -b --mime-type "$1")
    if [[ $mimeType == text/* ]]; then
        mimeType="${mimeType};charset=utf-8"
    fi
    echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}

# Get gzipped file size
function gz() {
    echo "orig size (bytes): "
    cat "$1" | wc -c
    echo "gzipped size (bytes): "
    gzip -c "$1" | wc -c
}

# Open current directory in a new tab:
function tab() {
  local command="cd \\\"$PWD\\\"; clear; "
  (( $# > 0 )) && command="${command}; $*"

  the_app=$(
    osascript 2>/dev/null <<EOF
      tell application "System Events"
        name of first item of (every process whose frontmost is true)
      end tell
EOF
  )

  [[ "$the_app" == 'Terminal' ]] && {
    osascript 2>/dev/null <<EOF
      tell application "System Events"
        tell process "Terminal" to keystroke "t" using command down
        tell application "Terminal" to do script "${command}" in front window
      end tell
EOF
  }

  [[ "$the_app" == 'iTerm' ]] && {
    osascript 2>/dev/null <<EOF
      tell application "iTerm"
        set current_terminal to current terminal
        tell current_terminal
          launch session "Default Session"
          set current_session to current session
          tell current_session
            write text "${command}\n"
          end tell
        end tell
      end tell
EOF
  }
}
