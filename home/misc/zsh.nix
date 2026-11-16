{config, pkgs, ...}:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      edit = "sudo -e";
      rebuild = "cd $HOME/nixos && sudo nixos-rebuild switch --flake .#aeroplane";
      ff = "fastfetch";
      reb = "reboot";
      shd = "shutdown 0";
      e = "exit";
      cds = "cd $HOME/nixos";
      "~" = "cd ~";
      ".." = "cd ..";
      "vimhome" = "vim $HOME/nixos/home/home.nix";
      "vimconf" = "vim $HOME/nixos/configuration.nix";  
      "gad" = "git add .";
      "gpu" = "git push -u";
      "gs" = "git status";
    };

    oh-my-zsh = {
      enable = true;
      package = pkgs.oh-my-zsh;

      plugins = [
        "git"
        "sudo"
        "ssh"
        "tt"
        "vscode"
      ];

      theme = "jonathan";
    };


    history.size = 10000;
    history.ignoreAllDups = true;
    history.path = "$HOME/.zsh_history";
    history.ignorePatterns = ["rm *" "pkill *" "cp *"];

    initContent = "fastfetch";
  };
}

