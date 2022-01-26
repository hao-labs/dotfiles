# common
abbr -a c   clear
abbr -a rf  refresh_fish

# nvim
abbr -a v   nvim
abbr -a vim nvim

# git
abbr -a g   git
abbr -a gs  git status -sb
abbr -a ga  git add
abbr -a gc  git commit
# switch branch
abbr -a gco git-checkout
abbr -a gb  git branch -av
# interract with remote
abbr -a gcl git clone
abbr -a gp  git push
abbr -a gpl git pull
# compare file
abbr -a gd  git difftool
abbr -a gds git difftool --staged
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
# merge
abbr -a gm  git merge

# exa
abbr -a l  list
abbr -a lg list --git
abbr -a lt exa --tree

# to make it short
alias list='exa -la --no-permissions --octal-permissions --header --icons'
alias refresh_fish='exec fish'
