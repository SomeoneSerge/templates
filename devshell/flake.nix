{
  description = "A very basic flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.devshell.url = "github:numtide/devshell";

  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let devshell = import inputs.devshell { inherit system; };
      in { devShell = import ./shell.nix { inherit devshell; }; });
}
