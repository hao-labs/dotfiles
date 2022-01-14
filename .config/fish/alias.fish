# common
abbr -a c   clear

# nvim
abbr -a v   nvim
abbr -a vim nvim

# git
abbr -a g   git
abbr -a gs  git status -sb
abbr -a ga  git add
abbr -a gc  git commit
# switch branch
abbr -a gco git checkout
# interract with remote
abbr -a gcl git clone
abbr -a gp  git push
abbr -a gpl git pull
# compare file
abbr -a gd  git diff
abbr -a gds git diff --staged
# log commit changes
abbr -a gl  git log-default
abbr -a glc git log-compact
# find and filtering log
abbr -a fm  git find-message
abbr -a fb  git find-source-branch-from-commit
abbr -a fab git find-all-branch-related-to-commit
# undo commit
abbr -a gu  git undo-last-commit
abbr -a gw  git wipe-last-commit

# exa
abbr -a l exa -la --no-permissions --octal-permissions --header --icons
abbr -a lg exa -la --no-permissions --octal-permissions --header --icons --git
abbr -a lt exa --tree
