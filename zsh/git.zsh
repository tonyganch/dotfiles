alias g='git'
alias ga='git add'
alias gam='git commit --amend'
alias gb='git branch'
alias gc='git commit'
alias gcb='git rev-parse --abbrev-ref HEAD'
alias gch='git cherry-pick'
alias gchm='git cherry-pick -m1'
alias gdt='git difftool'
alias gfet='git fetch origin --prune'
alias gl='git log --graph --pretty=format:"%Cgreen%h %Cblue%ar %Creset%s"'
alias go='git checkout'
alias пзд='git pull origin `git rev-parse --abbrev-ref HEAD`'
alias gpl='git pull origin `git rev-parse --abbrev-ref HEAD`'
alias gpf='git push --force origin `git rev-parse --abbrev-ref HEAD`'
alias gps='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gs='git status'

function gd() {git diff --diff-filter=M -- "$1" | strip_diff | colordiff | less -R}
function gf() {git commit --fixup="$1"}
function gg() {git grep --break --heading -i -I -n "$1" -- "$2"}
function gob() {git checkout -b tonyganch/"$1"}
function gpr() {git fetch origin pull/"$1"/head:pr/"$1" && git checkout pr/"$1"}
function gr() {git rebase -i --autosquash HEAD~"$1"}
function greset() {git reset --hard HEAD~"$1"}
function gstash() {git stash save "$1"}
function gstat() {git diff --shortstat master..origin/"$1"}

function strip_diff(){
  sed "s/^diff --git .*$//g" | \
    sed "s/^index .*$/$(rule)/g" | \
    sed "s/^\+\+\+\(.*\)$/+++\1~$(rule)/g" | \
    sed "s/^@@\(.*\)$/~@@\1/g" | \
    tr "~" "\n"
}

function rule () {
  printf "%$(tput cols)s\n"|tr " " "─"
}

function grep() {ggrep "$@"}
