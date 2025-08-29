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
            my-node-pkgs."eslint-9.34.0"
            my-node-pkgs."typescript-eslint-8.41.0"
          ];
        };
      }
    );
}