#!/bin/bash
set -e

echo "Downloading the latest Neovim release..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

echo "Extracting to /opt..."
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

echo "Symlinking to /usr/local/bin..."
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /bin/nvim

echo "Cleaning up..."
rm nvim-linux-x86_64.tar.gz

echo "Done!"
nvim --version | head -n 1
