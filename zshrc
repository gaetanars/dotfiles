# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# zsh-completions
fpath=(~/.oh-my-zsh/custom/plugins/zsh-completions/src $fpath)

plugins=(git aws kubectl common-aliases you-should-use zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true