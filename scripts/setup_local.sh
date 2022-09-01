#!/bin/bash
echo '- Update all submodules recursive '
git submodule update --recursive --remote

echo '- Submodules status'
git submodule status --recursive

sh ~/dotfiles/local-env/scripts/setup_local.sh
