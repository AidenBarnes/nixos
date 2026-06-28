{config, pkgs, ... }:

{
  home.username = "aiden";
  home.homeDirectory = "/home/aiden";

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  imports = [
    ./openbox/openbox.nix
    ./KDE/kdepkgs.nix
    ./misc/zsh.nix
  ];

  home.packages = with pkgs; [
    papirus-icon-theme
    alacritty
    firefox
    thunar
    spotify
    vscodium
    vesktop	 
    fastfetch
    libreoffice
    system-config-printer
    featherpad
    krita
    steam
    qbittorrent
    zoom-us
    file-roller
    blueman
    openboard
    xournalpp
    atlauncher
    direnv
    nix-direnv
    mpv
    signal-desktop
    signal-cli
    rawtherapee
    noto-fonts-cjk-sans
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
  
