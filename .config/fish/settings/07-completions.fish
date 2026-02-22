# Auto Completions for Fish shell

# Git Town completions (if installed)
if command -q git-town
    git-town completions fish | source
end

# Homebrew completions (if installed)
if command -q brew
    if test -d (brew --prefix)"/share/fish/completions"
        set -p fish_complete_path (brew --prefix)/share/fish/completions
    end

    if test -d (brew --prefix)"/share/fish/vendor_completions.d"
        set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
    end
end

fish_add_path "/home/hao/.bun/bin"
