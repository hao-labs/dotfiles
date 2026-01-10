# pnpm (interactive session)
if status is-interactive
  set -gx PNPM_HOME "$HOME/.local/share/pnpm"
  if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
  end

  # set default NODE_PATH VERSION
  set -gx NODE_PATH "$HOME/.local/share/pnpm/node"
end
# pnpm end
