{ pkgs ? import <nixpkgs> {} }:

let release = (pkgs.callPackage ./release.nix { inherit pkgs; });
in
pkgs.mkShell {
  buildInputs = with release; [
    magma_240
    pytorch36-cu
  ];
}

