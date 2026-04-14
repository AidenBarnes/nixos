{config, pkgs, ... }:

{
  home.file.".local/share/applications/rofi-drun.desktop".text = ''
    [Desktop Entry]
    Name=Run Apps
    Comment=Launch apps
    Exec=rofi -show drun
    Icon=system-run
    Terminal=false
    Type=Application
    Categories=Utility;
  '';
  home.file.".local/share/applications/alacritty.desktop".text = ''
    [Desktop Entry]
    Name=Terminal
    Comment=Terminal
    Exec=alacritty
    Icon=system-run
    Terminal=false
    Type=Application
    Categories=System;
  '';
}