{
  description = "A very basic flake";

  inputs = {
    # nixpkgs.url = "github:lopter/nixpkgs/release-22.05-lo-patches";
    nixpkgs.url = "github:nixos/nixpkgs/22.11";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      packages.x86_64-linux.default = pkgs.pkgsCross.raspberryPi.callPackage ./libmonome.nix {};
    };
}
