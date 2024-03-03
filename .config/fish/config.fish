if status is-interactive
  # Commands to run in interactive sessions can go here
  source ~/.config/fish/alias.fish
  # Install Starship
  starship init fish | source

  # pnpm
  set -gx PNPM_HOME "$HOME/.local/share/pnpm"
  if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
  end
  
  # set default NODE_PATH VERSION
  set -gx NODE_PATH "$HOME/.local/share/pnpm/node"
  # pnpm end
end

git-town completions fish | source
