{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell { buildInputs = [ python3 conda jupyter ]; }
