# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Define home
export ZSH=$HOME/.zsh

# history
HISTFILE=~/.zsh_history

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

# Plugins
[ -f $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ] && source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh


# Which plugins would you like to load?
plugins=(
    docker
    fzf
    git
)

source $ZSH/oh-my-zsh.sh


alias cat="batcat"
alias l="exa --all --long --icons --group-directories-first"

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
