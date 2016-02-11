
TCs dotfiles

# Initilize the Reop.
git submodule init
git submodule update

# Get powerline
sudo pip install powerline

# Note: install flake8 for syntastic to work


tmux
----
tmux settings mostly ctrl+b becomes ctrl+h


bash
----
bash_aliases: handy alias for resuming tmux sessions


git
---
Some aliases for git

- I like the following extras but I'm too lazy to add them to dotfiles
https://github.com/stevemao/diff-so-fancy

vim
---

pathogen: plugin loader

nerdtree: file tree

python-syntax: syntax highlighting
  todo: not working ?

vim-fugitive: git integration

minibufexpl: Elegant buffer explorer

ctrlp.vim: fuzzy find

powerline: git info on status line
  note: requires python setup.py build, install (or system pip)

syntastic: live syntax checking

vim-surround: automatic quotes, parens ending
