# xorg display server installation
sudo apt install -y libx11-dev xorg xbacklight xbindkeys xvkbd xinput xorg-dev xsel

# INCLUDES make,etc.
sudo apt install -y build-essential 

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network Manager
sudo apt install -y network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance 

# File Manager/Password Manager (eg. pcmanfm,krusader)
sudo apt install -y thunar keepassxc

# Network File Tools/System Events
sudo apt install -y ufw dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager
sudo apt install -y tlp
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
sudo systemctl enable tlp
sudo systemctl enable ufw

# Terminal (eg. terminator,kitty)
sudo apt install -y alacritty

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# example if you want to use in autostart located in ~/.local/share/dwm/autostart.sh
# sudo apt install -y feh
sudo apt install -y nitrogen 

# Packages needed dwm after installation
sudo apt install -y unzip mlocate exa tldr fzf bat

# Command line text editor -- nano preinstalled  
#sudo apt install -y neovim

# Install fonts
sudo apt install fonts-font-awesome fonts-ubuntu-title fonts-liberation2 fonts-liberation fonts-terminus 

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Clean apt
sudo apt auto remove
