#! /bin/bash

sudo pacman -S --noconfirm mako man-db man-pages waybar libnotify easyeffects pavucontrol flameshot grim slurp wl-clipboard pacman-contrib swww fastfetch alacritty lsd zsh zsh-syntax-highlighting zsh-autosuggestions wl-clipboard

sudo pacman -S --noconfirm qt5-quickcontrols qt5-graphicaleffects

chsh -s /bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k



# Fonts
sudo pacman -S --noconfirm noto-fonts ttf-dejavu ttf-droid otf-font-awesome ttf-liberation ttf-jetbrains-mono-nerd ttf-firacode-nerd
sudo pacman -S nerd-fonts

if command -v yay &> /dev/null; then
    echo "yay is installed."
else
    sudo pacman -S --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
    sudo rm -r yay
fi



if pacman -Q discord_arch_electron &>/dev/null; then
    echo "✅ discord_arch_electron is installed."
else
    yay -S discord_arch_electron
fi



chmod +x ~/.config/hypr/scripts/*.sh



yay -S waypaper

yay -S sddm-sugar-candy-git

yay -S gsimplecal


sudo tar -xzvf ~/.config/sddm/sddm-chili.tar.tar -C /usr/share/sddm/themes/
sudo touch /etc/sddm.conf
sudo sddm --example-config | sudo tee /etc/sddm.conf > /dev/null

sudo cp ./sddm.conf /etc/sddm.conf