########## PATH ##########
typeset -U path
path=(
  /usr/local/bin
  $HOME/miniconda3/condabin
  $HOME/.local/bin
  $path
)
export PATH

########## ENV VARS ##########
export ZSH="/home/quint/.oh-my-zsh"
export EDITOR=nvim
export VISUAL=nvim
export KITTYSOCKET=/tmp/kittysocket

########## ZSH CONFIG ##########
#Make sure to set the ZSH theme and plugins before sourcing oh-my-zsh.sh
ZSH_THEME="robbyrussell"
plugins=(git z)

#Rebind <ctrl-l> to insert empty string.
#Prevent me from accidentally clearning the terminal while in vim terminal
#mode when trying to change vim panes
bindkey -s "^l" ''



########## SCRIPTS ##########
# For kitty completions in bash and zsh:
autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Change directories when exiting nnn after changing directories
source $HOME/.config/zsh/quitcd.bash_zsh

#Load zsh (must happen after setting theme and plugins)
source $ZSH/oh-my-zsh.sh

#Run script to populate kitty color theme from xrdb database
#~/.config/kitty/load_colors_from_xrdb

LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
  source "$LFCD"
fi
alias lf='lfcd'

# Load direnv
eval "$(direnv hook zsh)"
########## ALIASES ##########
alias ls='exa -a'
#alias n='nnn -H'
alias gitb='git --no-pager branch'

#dotfiles config
#https://wiki.archlinux.org/index.php/Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias -s {pdf,PDF}=zathura
function vi() {
  nvim $1 $2
}

#Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell"
#[ -n "$PS1" ] && \
#    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
#        eval "$("$BASE16_SHELL/profile_helper.sh")"





# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/quint/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/home/quint/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/home/quint/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="/home/quint/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

########## ACTIVATE CONDA ENV ##########
#source activate dl

source /home/quint/.config/broot/launcher/bash/br
