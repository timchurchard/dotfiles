
# TCs dotfiles

![Alt text](sc_trans_vim.png?raw=true)
![Alt text](sc_peaksea_vim.png?raw=true)

## Switch to zsh + oh my zsh if you have not already
https://github.com/robbyrussell/oh-my-zsh
ZSH_THEME="agnoster"

## Initilize the Reop.
```shell
git submodule init
git submodule update --init --recursive
```

## Run Install
```shell
bash init_debian.sh
```

Note: install flake8 and shellcheck for syntastic to work


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

vim-sensible: Sane settings

vim-better-whitespace: Whitespace highlighting and :StripWhitespace command

nerdtree: file tree (ctrl+n to toggle)

python-syntax: syntax highlighting

vim-fugitive: git integration  (:Git status)

minibufexpl: Elegant buffer explorer

ctrlp.vim: fuzzy find

powerline: git info on status line
  note: requires install eg system pip

syntastic: live syntax checking
  note: cpu intensive (jshint, flake8 etc)
  note: global flake8 config included

vim-surround: automatic quotes, parens ending

peaksea.vim: colour theme

