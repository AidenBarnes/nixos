{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ 
    openbox 
    tint2
    rofi
    dunst
    picom
    feh
    ];

  home.file.".config/openbox/rc.xml".source = ./rc.xml;
  home.file.".config/openbox/autostart".source = ./autostart;

  # tint2 and apps
  home.file.".config/tint2/tint2rc" = {
    source = ./tint2rc;
    force = true;
  };


  imports = [
    ./tint2icons.nix
  ];
}