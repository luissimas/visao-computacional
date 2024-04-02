{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [ python3 micromamba jupyter python312Packages.pip ];

  shellHook = ''
    eval "$(micromamba shell hook --shell bash)"
    micromamba activate visao_computacional
  '';
}
