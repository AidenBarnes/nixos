{ pkgs }:

pkgs.mkShell {
  packages = [
    pkgs.zsh

    (pkgs.python312.withPackages (ps: with ps; [
      numpy
      sympy
      matplotlib
      ipython
    ]))
  ];
}