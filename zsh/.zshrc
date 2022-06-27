# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# https://github.com/romkatv/powerlevel10k#installation
source ~/Projects/powerlevel10k/powerlevel10k.zsh-theme

source ~/.config/aliasrc

# file type aliases
alias -s pdf=zathura
alias -s xlsx=libreoffice
alias -s xlsm=libreoffice
alias -s tsv=libreoffice
alias -s csv=libreoffice
alias -s txt=vim
alias -s json=vim
alias -s log=vim
alias -s html=firefox

setopt autocd
setopt sh_nullcmd # I do not know what this does

# set up history
setopt histignorealldups
setopt sharehistory
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh_history

zstyle ':completion:*' auto-description 'specify: %d'

# speed up keyboard
xset r rate 190 35

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/fabian/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fabian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/fabian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/fabian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# autosuggestions
source ~/Projects/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting (should be at end of zshrc, see Github repo:
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source ~/Projects/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2> /dev/null
