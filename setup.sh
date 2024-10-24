sudo pacman -Syu
sudo pacman fish rofi polybar peek ripgrep lazygit yazi polybar kvantum qt5ct lxappearance picom nitrogen visual-studio-code-bin

# node setup
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm install latest

# neovim setup
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh