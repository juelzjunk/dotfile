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
# sudo apt install -y tlp
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
# sudo systemctl enable tlp
sudo systemctl enable ufw

# Terminal (eg. terminator)
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
sudo apt install -y unzip aircrack-ng mlocate exa tldr fzf nmap bat speedtest-cli

# Command line text editor -- nano preinstalled  
#sudo apt install -y neovim
cd 
sudo apt install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
cd
# Install fonts
sudo apt install fonts-font-awesome fonts-ubuntu-title fonts-liberation2 fonts-liberation fonts-terminus 

# Clean apt
sudo apt auto remove

#librewolf
cd~
sudo apt update && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

sudo apt update

sudo apt install librewolf -y

#picom
cd ~
# Install needed packages
sudo apt install -y libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev libxext-dev meson ninja-build uthash-dev

# Clone repo
git clone https://github.com/yshui/picom.git
cd picom

# Build and Install picom
meson setup --buildtype=release build
sudo ninja -C build
sudo ninja -C build install
cd ~
sudo apt auto remove

# Make junkless
cd
cd ~/junk/junkless/
cd dmenu
sudo make clean install
cd ..
cd dwm
sudo make clean install
cd ..
cd slock
sudo make clean install
cd ..
cd slstatus
sudo make clean install
cd ..
cd st
sudo make clean install
cd 
mkdir -p .config/{alacritty,nvim,picom}
mv ~/junk/dotfile/alacritty ~/.config/alacritty
mv ~/junk/dotfile/nvim ~/.config/nvim
mv ~/junk/dotfile/bashrc ~/.bashrc
mv ~/junk/dotfile/bash_profile ~/.bash_profile
mv ~/junk/dotfile/xinitrc ~/.xinitrc
mv ~/junk/dotfile/picom.conf ~/.config/picom/picom.conf

echo "yerrrrr"
echo "cp ~/junk/dotfile/picom.conf ~/.config/picom/picom.conf && sudo reboot"
echo "xdg-user-dirs-update>download nerdfonts to .local/share/fonts"
