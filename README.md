# Dotfiles

Personal dotfiles managed with GNU Stow for easy setup and maintenance across multiple machines.

## Overview

This repository contains configuration files for various development tools and applications, organized into logical packages. Each package can be installed or removed independently using Stow.

## Prerequisites

- **GNU Stow** - For managing symlinks
  - Ubuntu/Debian: `sudo apt install stow`
  - macOS: `brew install stow`
  - Arch: `sudo pacman -S stow`
  - Fedora: `sudo dnf install stow`

- **Fish Shell** - The default shell configuration
  - Ubuntu/Debian: `sudo apt install fish`
  - macOS: `brew install fish`

- **pnpm** - Package manager for global packages
  - `npm install -g pnpm`

- **Node.js** - Required for some tools
  - Use nvm or your preferred method

## Installation

### Quick Install (All Packages)

```bash
cd ~/dotfiles
stow */
```

This will create symlinks in your home directory for all packages.

### Selective Installation

Install specific packages by passing their names:

```bash
cd ~/dotfiles

# Install git configuration
stow git

# Install shell configuration
stow .config

# Install binaries
stow bin

# Install local packages
stow .local

# Install devbox configuration
stow devbox
```

### Remove Packages

Unlink specific packages:

```bash
cd ~/dotfiles
stow -D git  # Delete git symlinks
stow -D .config  # Delete shell config symlinks
```

## Packages

| Package | Description | What it Symlinks |
|---------|-------------|------------------|
| `bin/` | Personal scripts and executables | `~/bin/` |
| `git/` | Git configuration | `~/.gitconfig` |
| `.config/` | Application configurations (XDG) | `~/.config/fish/`, `~/.config/starship.toml` |
| `.local/` | Local data and packages (XDG) | `~/.local/share/pnpm/` |
| `devbox/` | Development environment config | `~/devbox/` |
| `scripts/` | Setup and utility scripts | (No symlinks - run directly) |
| Root files | Global configurations | `~/.npmrc`, `~/.czrc`, `~/biome.json` |

### Root-level Files

These files are not in packages and should be manually symlinked if needed:

- `.npmrc` - npm configuration
- `.czrc` - Commitizen configuration
- `biome.json` - Biome formatter configuration
- `.gitmodules` - Git submodules

To link them:

```bash
cd ~/dotfiles
ln -s ~/dotfiles/.npmrc ~/.npmrc
ln -s ~/dotfiles/.czrc ~/.czrc
ln -s ~/dotfiles/biome.json ~/biome.json
```

## What's Included

### Shell Setup
- **Fish** shell configuration with custom functions and aliases
- **Starship** prompt configuration
- Custom git helper functions
- Notification functions

### Development Tools
- **Git** configuration with aliases and settings
- **pnpm** global packages
- **Devbox** environment setup for local development (PHP, MySQL, Nginx, Memcached)

### Utilities
- Custom scripts in `~/bin/`
- Setup scripts for local environments

## First-Time Setup

After running `stow */`:

1. **Set Fish as your default shell** (optional):
   ```bash
   chsh -s $(which fish)
   ```

2. **Reload your shell** or start a new terminal session.

3. **Initialize Git submodules** (if any):
   ```bash
   cd ~/dotfiles
   git submodule update --init --recursive
   ```

4. **Run any setup scripts** if available:
   ```bash
   ./scripts/setup_local.sh
   ```

## Updating

To pull updates from this repository:

```bash
cd ~/dotfiles
git pull
```

Since Stow uses symlinks, changes will be reflected immediately in your home directory.

## Customization

### Adding New Config Files

1. Create a new package directory (or use an existing one)
2. Place your config files in the appropriate directory structure
3. Run `stow <package-name>` to create symlinks

Example for a new `vim` package:

```bash
mkdir -p ~/dotfiles/vim/.config/nvim
# Add your nvim config files
cd ~/dotfiles
stow vim
```

### Modifying Existing Files

Edit the files in `~/dotfiles/` directly. Changes will be reflected in your home directory since they're symlinks.

**Important**: Do not modify files in your home directory directly (e.g., `~/.gitconfig`) unless you want to break the symlink structure. Always edit in `~/dotfiles/git/.gitconfig`.

## Troubleshooting

### Symlink Conflicts

If Stow reports conflicts:

```bash
# Check what would be done without actually symlinking
stow -n -v <package-name>

# Delete existing conflicting files manually, then restow
stow -D <package-name>
stow <package-name>
```

### Package Not Found

Ensure you're in the dotfiles directory and the package folder exists:

```bash
cd ~/dotfiles
ls -la
```

### Stow Permissions

If you get permission errors, check that you own your home directory:

```bash
ls -ld ~
```

Should show your username. If not, fix ownership:
```bash
sudo chown -R $USER:$USER ~
```

## Directory Structure

```
~/dotfiles/
├── bin/                    # Executable scripts
│   └── php
├── git/                    # Git configuration
│   └── .gitconfig
├── .config/                # XDG config directory
│   ├── fish/              # Fish shell config
│   └── starship.toml      # Starship prompt config
├── .local/                 # XDG local directory
│   └── share/pnpm/        # pnpm global packages
├── devbox/                 # Dev environment config
│   └── devbox.d/          # Devbox service configs
├── scripts/                # Setup and utility scripts
│   └── setup_local.sh
├── biome.json             # Biome formatter
├── .npmrc                 # npm config
├── .czrc                  # Commitizen config
└── .gitmodules            # Git submodules
```

## Credits

Inspired by various dotfile repositories and the GNU Stow philosophy of keeping configuration files organized and maintainable.

## License

MIT License - feel free to use and modify as needed.
