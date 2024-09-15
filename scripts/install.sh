#!/bin/bash

# Update package lists
sudo emerge --sync

# Install necessary packages for dotfiles
sudo emerge --ask app-shells/bash app-editors/vim app-editors/emacs app-misc/tmux app-admin/git x11-apps/xrdb media-fonts/kitty

# Directory where dotfiles will be cloned
DOTFILES_DIR=~/dotfiles

# Clone or update the dotfiles repository
if [ -d "$DOTFILES_DIR" ]; then
    cd "$DOTFILES_DIR" && git pull
else
    git clone https://github.com/username/dotfiles.git "$DOTFILES_DIR"
fi

# Create symlinks for all dotfiles in the dotfiles directory
for dotfile in "$DOTFILES_DIR"/.*; do
    if [ -f "$dotfile" ] && [ "$dotfile" != "$DOTFILES_DIR/." ] && [ "$dotfile" != "$DOTFILES_DIR/.." ]; then
        # Extract the filename
        filename=$(basename "$dotfile")
        # Create symlink in home directory
        ln -sf "$dotfile" ~/"$filename"
        echo "Symlink created for $filename"
    fi
done

echo "All dotfiles symlinked successfully!"

# Install Networking Software
sudo emerge --ask net-proxy/proxychains net-vpn/mullvad-vpn net-vpn/protonvpn

# Install Development Software
sudo emerge --ask dev-vcs/git dev-vcs/svn sys-devel/gcc sys-devel/clang sys-devel/make sys-devel/cmake sys-devel/autoconf sys-devel/automake sys-devel/pkg-config dev-lang/python dev-lang/python3
sudo emerge --ask dev-dotnet/dotnet
sudo emerge --ask dev-python/pip dev-python/numpy dev-python/pandas dev-python/requests dev-python/virtualenv
sudo emerge --ask net-libs/nodejs dev-lang/npm
sudo emerge --ask dev-db/mongodb
sudo emerge --ask www-client/chromium www-client/librewolf www-client/ladybird www-client/min www-client/surf www-client/lynx

# Install Writing Software
sudo emerge --ask app-office/focuswriter app-office/writefreely

# Install Note Taking Software
sudo emerge --ask app-office/obsidian app-office/anki

# Install Mathematics Software
sudo emerge --ask sci-mathematics/sage

# Install Entertainment Software
# Note: These are not available in the Gentoo repository. You might need to use pip or another method to install these.
pip install ani-cli movie-cli manga-cli libgen-cli kjv

echo "All packages installed successfully!"






