[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# VARIABLES
export dotfiles="$HOME/backupity/.dotfiles"
export fpath=( "$dotfiles/.zfunctions" $fpath)
VISUAL=vim
EDITOR=vim
HISTFILE="/home/foxtrot/.zhistory"
SAVEHIST=2000
HISTSIZE=1000

[[ -f $dotfiles/.zkbd ]] && source $dotfiles/.zkbd
[[ -f ~/.aliases.sh ]] && source ~/.aliases.sh

# PROMPT
autoload -U promptinit; promptinit
prompt pure
PROMPT='%(?.%F{white}.%F{red})${PURE_PROMPT_SYMBOL:-→}%f '
# PROMPT=$'\n'"%B%F{81}%d%f"$'\n'">%b "

# OPTIONS
setopt histignorealldups sharehistory
setopt correct

# modules
autoload -Uz compinit; compinit -D

# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
