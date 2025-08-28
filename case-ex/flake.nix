{
  description = "Node pkgs environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        preset = pkgs.textlint-rule-preset-ja-technical-writing;

        textlintWrapped = pkgs.symlinkJoin {
          name = "textlint-with-presets";
          paths = [ pkgs.textlint ];
          buildInputs = [ pkgs.makeWrapper ];
          postBuild = ''
            wrapProgram $out/bin/textlint \
              --set NODE_PATH ${preset}/lib/node_modules
          '';
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [ textlintWrapped preset ];
        };
      }
    );
}
