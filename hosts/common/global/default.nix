{
  input,
  outputs,
  ...
}: {
  imports = [
    ./zsh.nix
    ./nix-ld.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}
