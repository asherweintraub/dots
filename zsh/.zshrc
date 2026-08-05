export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# path
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin" # pipx

# aliases
alias ls="eza -al --icons --no-user --no-permissions"
alias grerp="grep -ri --exclude-dir='node_modules'" # rg -i does this + respects .gitignore
alias cl="claude-sessions"

# startup scripts
colorscript -e crunchbang
eza

# plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(fzf --zsh)"

# starship prompt
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/Users/asher/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# mtkclient install
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export CPPFLAGS="-I$(brew --prefix openssl)/include"
export CFLAGS="-I$(brew --prefix openssl)/include"

