# Hyprland-Dotfiles
My minimalistic hyprland dotfiles. I hope you will like it ❤️

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
sudo pacman -S hyprland kitty dolphin code chromium flatpak bazaar rofi waybar hyprshot dunst pavucontrol awww wl-clipboard cliphist hyprlock && flatpak install flathub io.missioncenter.MissionCenter && yay -S wlogout bibata-cursor-theme-bin
```

Then install my dotfiles by running in the terminal:

```
git clone https://github.com/Esconine/Hyprland-Dotfiles.git
```
