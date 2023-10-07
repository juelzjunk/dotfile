
# Install needed packages
sudo apt install -y libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev libxext-dev meson ninja-build uthash-dev

# Clone repo
git clone https://github.com/yshui/picom.git
cd picom

# Build and Install picom
meson setup --buildtype=release build
sudo ninja -C build
sudo ninja -C build install
echo "cp ~/junkSuckless/dotfile/picom.conf ~/.config/picom/picom.conf && sudo reboot"
