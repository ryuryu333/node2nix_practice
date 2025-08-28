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
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.textlint
            pkgs.textlint-rule-preset-ja-technical-writing
            ];
        };
        shellHook = ''
          export NODE_PATH=${pkgs.textlint-rule-preset-ja-technical-writing}/lib/node_modules:$NODE_PATH
        '';
      }
    );
}
