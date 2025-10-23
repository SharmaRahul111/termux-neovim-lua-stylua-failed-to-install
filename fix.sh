# Script to solve the following error while installing
# any neovim distro like lazyvim, nvchad, kickstart, etc
# Error: Failed to install lua-language-server
# Error: Failee to install stylua
#
#
# For stylua
mkdir -p ~/.local/share/nvim/mason/packages/stylua/libexec/bin
ln -sf "$(command -v stylua)" ~/.local/share/nvim/mason/packages/stylua/libexec/bin/stylua
cat > ~/.local/share/nvim/mason/packages/stylua/stylua <<'EOF'
#bash
exec "$HOME/.local/share/nvim/mason/packages/stylua/libexec/bin/stylua" "$@"
EOF
chmod +x ~/.local/share/nvim/mason/packages/stylua/stylua


# For lua-language-server
mkdir -p ~/.local/share/nvim/mason/packages/stylua/libexec/bin
ln -sf "$(command -v stylua)" ~/.local/share/nvim/mason/packages/stylua/libexec/bin/stylua
vi ~/.local/share/nvim/mason/packages/stylua/stylua
mkdir -p ~/.local/share/nvim/mason/packages/lua-language-server/libexec/bin
ln -sf "$(command -v lua-language-server)" ~/.local/share/nvim/mason/packages/lua-language-server/libexec/bin/lua-language-server
cat > ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server <<'EOF'
#!/bin/bash
exec "$HOME/.local/share/nvim/mason/packages/lua-language-server/libexec/bin/lua-language-server" "$@"
EOF
chmod +x ~/.local/share/nvim/mason/packages/lua-language-server/lua-language-server
