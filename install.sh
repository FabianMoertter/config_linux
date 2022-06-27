# stow dotfiles
stow bspwm -t ~/.config/
stow sxhkd -t ~
stow nvim  -t ~/.config/
stow alacritty  -t ~/.config/
stow tmux -t ~
stow polybar -t ~/.config/
stow zathura -t ~/.config/
stow zsh -t ~/
stow aliasrc -t ~
stow terminator -t ~/.config/

# add zsh as a login shell
# command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
# sudo chsh -s $(which zsh) $USER

# install neovim plugins
# nvim --headless +PlugInstall +qall
