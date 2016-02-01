
#
# tmux alias from https://gist.github.com/lucaspiller/3377737
#
tm() {
  [[ -z "$1" ]] && { echo "usage: tm <session>" >&2; return 1; }
  tmux has -t $1 && tmux attach -d -t $1 || tmux new -s $1
}

