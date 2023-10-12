#!/bin/bash

# AUTHOR: Tyler McCann (@tylerdotrar)
# ARBITRARY VERSION NUMBER: 1.0.0
# LINK: https://github.com/tylerdotrar/CleanBuilds


# Visual formatting of output
print_yellow() {
  echo -e "$(tput setaf 3)$1$(tput setaf 7)"
}


# Update & Upgrade
print_yellow '[+] Updating packages & repositories...'
sudo apt update && sudo apt upgrade -y
print_yellow " o  Done.\n"


# Install i3 Dependencies
print_yellow '[+] Installing i3 dependencies...'
sudo apt install -y i3-wm i3blocks i3lock-fancy i3status xfce4-terminal rofi feh picom arandr
print_yellow " o  Done.\n"


# Create a backup of original .config
print_yellow "[+] Creating backup of current '~/.config'..."
tar -czf .config.bak ~/.config
print_yellow " o  Backup Archive Created: '~/.config.bak'"
print_yellow " o  Done.\n"


# Copy custom dotfiles
print_yellow "[+] Copying custom dotfiles to '~/.config'..."
print_yellow " o  i3 Mod Key: 'win_key'"
print_yellow " o  Wallpaper Location: '~/.config/wallpaper'"
cp -r config/* ~/.config/
print_yellow " o  Done.\n"


# Install oh-my-zsh
print_yellow '[+] Installing oh-my-zsh...'
export RUNZSH='no'
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
rm -f ~/.zshrc.pre-oh-my-zsh
print_yellow " o  Done.\n"


# Custom custom .zshrc config
print_yellow '[+] Copying custom oh-my-zsh config...'
mv ~/.zshrc ~/zshrc.bak
print_yellow " o  Backup File Created: '~/.zshrc.bak'"
cp zshrc ~/.zshrc
sudo cp -f zshrc /root/.zshrc
sudo cp -r ~/.oh-my-zsh /root/.
print_yellow " o  Using Custom Theme: '2clean.zsh-theme'"
cp oh-my-zsh/themes/2clean.zsh-theme ~/.oh-my-zsh/themes/2clean.zsh-theme
print_yellow ' o  Added local (arrows) and global (CTRL + arrows) command history.'
cp oh-my-zsh/lib/key-bindings.zsh ~/.oh-my-zsh/lib/key-bindings.zsh
print_yellow " o  Done.\n"


# Install Quality-of-Life Tools
print_yellow '[+] Installing quality-of-life tools...'
sudo apt install -y flameshot
print_yellow " o  'flameshot' installed."
sudo apt install -y rlwrap
print_yellow " o  'rlwrap' installed."
sudo apt install -y ncat
print_yellow " o  'ncat' installed."
sudo apt install -y neofetch
print_yellow " o  'neofetch' installed."
sudo apt install -y qemu-guest-agent
sudo systemctl enable qemu-guest-agent --now
print_yellow " o  'qemu-quest-agent' installed."
print_yellow " o  Done.\n"


# Install Rust
print_yellow '[+] Installing rust...'
curl https://sh.rustup.rs -sSf | sh -s -- -y
print_yellow " o  Done.\n"


# Replacing nano with nvim
print_yellow '[+] Replacing nano with neovim...'
sudo apt remove nano -y
print_yellow " o  'nano' removed."
sudo apt install neovim -y
print_yellow " o  'neovim' installed."
print_yellow " o  Done.\n"


# Enable Remoting
print_yellow '[+] Enabling remoting...'
sudo apt install -y xrdp
sudo systemctl enable xrdp --now
print_yellow " o  'xrdp' installed and enabled."
wget https://download.nomachine.com/download/8.9/Linux/nomachine_8.9.1_1_amd64.deb
sudo dpkg -i nomachine_8.9.1_1_amd64.deb
rm -f nomachine_8.9.1_1_amd64.deb
print_yellow " o  'nomachine (v8.9.1)' installed and enabled."
print_yellow " o  Done.\n"


# Finished
print_yellow "[+] Setup complete; reboot system and log in using 'i3-session'."