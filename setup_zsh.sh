#!/bin/sh
echo "creating .zshrc symlink"
ln -s $(dirname "$0")/.zshrc $(pwd)/.zshrc
echo "done"
