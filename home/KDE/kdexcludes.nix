{config, pkgs, ...}:
{
    environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    elisa
    ark
    dolphin
    gwenview
    kate
    okular
    baloo-widgets # baloo information in Dolphin
    dolphin-plugins
  ];
}