{config, pkgs, ... }:

{
  home.username = "aiden";
  home.homeDirectory = "/home/aiden";

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  imports = [
    ./openbox/openbox.nix
    ./KDE/kdepkgs.nix
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
  ];
  
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      edit = "sudo -e";
      update = "cd $HOME/nixos && sudo nixos-rebuild switch --flake .#aeroplane";
    };

    history.size = 10000;
    history.ignoreAllDups = true;
    history.path = "$HOME/.zsh_history";
    history.ignorePatterns = ["rm *" "pkill *" "cp *"];
  };
}
  
