{config, ...}: let

in {
  imports = [
    ./vscode.nix
    ./helix
    ./packages.nix
  ];
}
