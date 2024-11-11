# Environment variables
set -gx NVIM_APPNAME "astronvim_v4"

if status is-interactive
  # Commands to run in interactive sessions can go here
  source ~/.config/fish/alias.fish
  source ~/.config/fish/functions/notify.fish
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

# Auto Completions for Fish shell
git-town completions fish | source

if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end
