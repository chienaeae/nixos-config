{ config, pkgs, ...}:

{
  # You can import other home-manager modules here
  imports = [
    ./shell
    ./editor
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];
  
  home.username = "philly";
  home.homeDirectory = "/home/philly";
  home.packages = with pkgs; [
    btop
    hugo

    git
    gitui
  ];

  programs.git = {
    enable = true;
    userName = "chienaeae";
    userEmail = "chienaeae@gmail.com";
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}

