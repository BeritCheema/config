# Created by Zap installer
if [ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ]; then 
source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" 
fi 
if [ -f "$HOME/.dotfiles/zsh/zap/zap.zsh" ]; then
  source "$HOME/.dotfiles/zsh/zap/zap.zsh"
fi
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'

# Load and initialise completion system
autoload -Uz compinit
compinit

if [ -f "$HOME/.cargo/env" ]; then
. "$HOME/.cargo/env"
fi
eval "$(starship init zsh)"
alias nvim-nuke="rm ~/.local/state/nvim/swap/*.swp"

# Set up fzf key bindings and fuzzy completion
# Enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=/usr/local/node/bin:$PATH

export LS_COLORS='di=01;36:ln=01;35:so=01;35:pi=33:ex=03;31:bd=40;33;01:cd=01;33:su=37;41:sg=30;43:tw=30;42:ow=34;42'

# bun completions
[ -s "/home/cheema/.bun/_bun" ] && source "/home/cheema/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/.maestro/bin
