alias t='tmux'
alias tls='tmux ls'
alias еды='tmux ls'

function ta() {tmux attach -t $1}
function tk() {tmux kill-session -t $1}
function tn() {tmux new -s $1}

_list_sessions() {
  local state

  case state in
    (*) compadd "$@" $(tmux ls | sed 's/:.*//') ;;
  esac
}

compdef _list_sessions ta
compdef _list_sessions tk
