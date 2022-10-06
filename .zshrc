if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export ZSH="$HOME/zsh-theme"
ZSH_THEME="eastwood"
source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/mathias/.spicetify

alias lf="lfub"
