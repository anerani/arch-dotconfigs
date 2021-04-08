if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/erani/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git lxd docker)

source $ZSH/oh-my-zsh.sh

# ------------------
# User configuration
# ------------------

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Extra paths
export PATH="$PATH:$HOME/.local/bin"

# AUR management
export AUR_PACKAGES_PATH="$HOME/Packages"
