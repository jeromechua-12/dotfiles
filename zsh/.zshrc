# If not running interactively or if standard linux TTY, don't do anything
if [[ $- != *i* ]] || [[ "$TERM" == "linux" ]]; then
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    return
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of $HOME/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go above.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# powerlevel10k theme
source $HOME/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
# to customise prompt, run `p10k configure` or edit $HOME/.config/zsh/powerlevel10k/.p10k.zsh
source $HOME/.config/zsh/powerlevel10k/.p10k.zsh

# zsh autosugggestion
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# script to activate/deactivate python venv
source $HOME/.config/zsh/auto_venv.zsh

# zsh history size
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zsh_history

# alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ~="cd $HOME"
alias ..="cd .."
alias vi="nvim"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# golang
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# python uv
source "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion zsh)"
