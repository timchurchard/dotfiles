
sudo apt-get install rxvt-unicode-256color wmctrl

ln -sfv ~/dotfiles.git/urxvt-files ~/.urxvt

cat ~/.urxvt/Xresources >> ~/.Xresources
xrdb -load ~/.Xresources

