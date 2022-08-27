if status is-interactive
  # Commands to run in interactive sessions can go here
  source ~/.config/fish/alias.fish
  # Install Starship
  starship init fish | source


  # pnpm
  set -gx pnpm_home "/home/hao/.local/share/pnpm"
  set -gx path "$pnpm_home" $path
  # pnpm end
end

# Install Starship
starship init fish | source
