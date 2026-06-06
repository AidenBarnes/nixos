{ pkgs }:

pkgs.mkShell {
  packages = [
    (pkgs.python312.withPackages (ps: with ps; [
      numpy
      sympy
      matplotlib
      ipython
    ]))
  ];
}