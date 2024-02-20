if status is-interactive
  # Commands to run in interactive sessions can go here
  source ~/.config/fish/alias.fish
  # Install Starship
  starship init fish | source

  # pnpm
  set -gx PNPM_HOME "$HOME/.local/share/pnpm"
  set -gx PATH "$PNPM_HOME" $PATH
  # pnpm end
end

git-town completions fish | source
