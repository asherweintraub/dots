set fish_greeting

if status is-interactive
  starship init fish | source

  colorscript -e crunchbang
  eza
end

# Created by `pipx` on 2025-07-19 23:38:34
set PATH $PATH /Users/asher/.local/bin
