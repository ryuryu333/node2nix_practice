{
  description = "Node pkgs environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        my-node-pkgs = import ./node-pkgs/default.nix {
          inherit pkgs system;
          nodejs = pkgs.nodejs_24;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            my-node-pkgs.textlint
            my-node-pkgs."textlint-rule-preset-ja-technical-writing-12.0.2"
          ];
        };
      }
    );
}