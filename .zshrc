if [[ "$TERM_PROGRAM" == "ghostty" ]]; then fastfetch; else fastfetch --logo-type builtin --logo macos_small; fi
export PATH="/opt/homebrew/bin:$PATH"
alias python=python3
alias pip=pip3
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"

# pnpm
export PNPM_HOME="/Users/jeet/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opencode
export PATH=/Users/jeet/.opencode/bin:$PATH
# source /opt/homebrew/opt/spaceship/spaceship.zsh

# Autosuggestions: grey inline suggestions from your history
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Nicer ls, tree and cat
alias ls="eza --icons --group-directories-first"
alias ll="eza -la --icons --git --group-directories-first"
alias tree="eza --tree --icons --level=2"
alias cat="bat --paging=never"

# Fuzzy history search (Ctrl+R) and file finder (Ctrl+T)
source <(fzf --zsh)

# Syntax highlighting: valid commands turn green, typos red (keep this last)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
export STARSHIP_LOG=error
