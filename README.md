# dotfiles

My macOS terminal setup: Ghostty + zsh + Starship, with fastfetch, bat, eza and fzf.

| File | What it is |
| --- | --- |
| `.config/ghostty/config` | Ghostty: Dark Pastel theme, JetBrainsMono Nerd Font, blurred translucent background |
| `.zshrc` | zsh: autosuggestions, syntax highlighting, fzf, eza/bat aliases, Starship prompt |
| `.config/starship.toml` | Starship prompt (Catppuccin Mocha powerline) |
| `.config/spaceship.zsh` | Older Spaceship prompt config (not loaded by `.zshrc`) |
| `.config/fastfetch/config.jsonc` | fastfetch system info shown when a shell opens |
| `.config/bat/` | bat with the Tokyo Night theme |
| `Pictures/terminal/jon.png` | fastfetch logo image |

## Install

```sh
brew install --cask ghostty font-jetbrains-mono-nerd-font
brew install starship fastfetch bat eza fzf zsh-autosuggestions zsh-syntax-highlighting

git clone https://github.com/Jeet-programmer/dotfiles.git ~/Code/dotfiles
cd ~/Code/dotfiles
mkdir -p ~/.config ~/Pictures/terminal
cp -R .config/. ~/.config/
cp .zshrc ~/.zshrc
cp Pictures/terminal/jon.png ~/Pictures/terminal/
bat cache --build
```

The fastfetch logo path in `config.jsonc` is absolute (`/Users/jeet/...`), so change it if your username is different.
