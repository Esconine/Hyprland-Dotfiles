# Hyprland-Dotfiles
My minimalistic hyprland dotfiles. I hope you will like it ❤️

<div align="center"> 

![Static Badge](https://img.shields.io/badge/Hyprland-white?style=for-the-badge&logo=hyprland&logoColor=D9E0EE&labelColor=1E202B&color=8ad7eb)
![Static Badge](https://img.shields.io/badge/Lua-white?style=for-the-badge&logo=lua&logoColor=D9E0EE&labelColor=1E202B&color=8ad7eb)
![Static Badge](https://img.shields.io/badge/CSS-white?style=for-the-badge&logo=css&logoColor=D9E0EE&labelColor=1E202B&color=8ad7eb)
![Static Badge](https://img.shields.io/badge/Arch%20Linux-white?style=for-the-badge&logo=archlinux&logoColor=D9E0EE&labelColor=1E202B&color=8ad7eb&link=https%3A%2F%2Farchlinux.org%2F)

</div>

> [!IMPORTANT]
> Works only on Arch Linux and Arch-based distributions (CachyOS, EndeavourOS, Manjaro, Garuda, Artix and etc)

## Manual Installation
> [!NOTE]
> Make sure you have an aur helper installed, if not so install it by running in the terminal:
>
> ```
> sudo pacman -S --needed base-devel git
> git clone https://aur.archlinux.org/yay.git
> cd yay
> makepkg -si
> ```

Install all the dependencies by running in the terminal:

```
sudo pacman -S hyprland xdg-desktop-portal xdg-desktop-portal-hyprland polkit-kde-agent ttf-jetbrains-mono-nerd kitty dolphin code chromium flatpak bazaar rofi waybar hyprshot dunst pavucontrol awww wl-clipboard cliphist hyprlock && flatpak install flathub io.missioncenter.MissionCenter && yay -S wlogout bibata-cursor-theme-bin
```

Then install my dotfiles by running in the terminal:

```
git clone https://github.com/Esconine/Hyprland-Dotfiles.git
cd Hyprland-Dotfiles
chmod +x install.sh
./install.sh
```
