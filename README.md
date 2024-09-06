
![Untitled design (1)](https://github.com/user-attachments/assets/5f7c3412-70b1-4937-af27-e73f96ad7f41)

# kristoo

### Table of Contents

- [Introduction](#introduction)
- [Structure](#structure)
- [Installation](#installation)
- [Configuration](#configuration)
- [Scripts](#scripts)
- [Contributing](#contributing)
- [License](#license)

### Introduction

This repository serves as a central place to store and manage my Gentoo Linux configurations, focusing on minimalism and efficiency. It includes everything from dotfiles to custom scripts and configurations for the DWM window manager.

### Structure

```
dotfiles/
├── README.md
├── scripts/
│   ├── install.sh
│   ├── update.sh
│   └── cleanup.sh
├── dotfiles/
│   ├── .bashrc
│   ├── .vimrc
│   ├── .emacs
│   ├── .tmux.conf
│   ├── .gitconfig
│   └── .Xresources
├── config/
│   ├── X11/
│   │   └── xorg.conf.d/
│   │       ├── 10-keyboard.conf
│   │       └── 20-touchpad.conf
│   ├── dwm/
│   │   ├── config.h
│   │   ├── dwm.desktop
│   │   └── autostart.sh
│   ├── kitty/
│   │   └── kitty.conf
│   ├── nvim/
│   │   └── init.vim
│   └── rofi/
│       └── config.rasi
└── tools/
    ├── custom-commands/
    │   ├── cpuspeed
    │   └── memcheck
    └── themes/
        ├── gruvbox/
        │   ├── colors.vim
        │   └── themes/
        └── solarized/
            ├── colors.vim
            └── themes/

```

### Installation

To get started with these configurations, clone the repository and run the installation script:

```bash
git clone https://github.com/yourusername/gentoo-nest.git
cd gentoo-nest/scripts
./install.sh


