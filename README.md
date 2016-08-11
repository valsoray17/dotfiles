# dotfiles
Current dotfiles cover Fedora distro

## TODO
* install.sh
* Prerequisites
 * rofi
 * compton
 * i3-gaps
 * feh
 * i3lock
 * pactl
 * xbacklight
 * parcellite
 * urxvt (rxvt-unicode-256color.x86_64)
 * sudo dnf group install 'Development Tools'
 * sudo dnf groupinstall "C Development Tools and Libraries"
* Setup feh
* Fonts
 * [System San Francisco Display](https://github.com/supermarin/YosemiteSanFranciscoFont)
 * [Font Awesome](https://fortawesome.github.io/Font-Awesome/)   
* Add i3lock systemd service!
* Repos
 * [RPM Fusion](http://rpmfusion.org/Configuration/)

* Fontconfig
```xml
<?xml version="1.0"?><!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
 <match target="font">
  <edit name="rgba" mode="assign">
   <const>rgb</const>
  </edit>
 </match>
 <match target="font">
  <edit name="lcdfilter" mode="assign">
   <const>lcddefault</const>
  </edit>
 </match>
 <match target="font">
  <edit name="hinting" mode="assign">
   <bool>true</bool>
  </edit>
 </match>
 <match target="font">
  <edit name="hintstyle" mode="assign">
   <const>hintslight</const>
  </edit>
 </match>
 <match target="font">
  <edit name="antialias" mode="assign">
   <bool>true</bool>
  </edit>
 </match>
</fontconfig>
```
