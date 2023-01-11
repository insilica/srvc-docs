{
  description = "srvc-docs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      with import nixpkgs { inherit system; };
      let
        srvc-docs = stdenv.mkDerivation {
          name = "srvc-docs";
          src = ./.;

          installPhase = ''
            mkdir -p $out
          '';
        };
      in {
        packages = {
          inherit srvc-docs;
          default = srvc-docs;
        };
        devShells.default = mkShell { buildInputs = [ awscli hugo ]; };
      });
}
