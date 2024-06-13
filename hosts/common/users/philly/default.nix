{
  pkgs,
  config,
  ...
}: let

in {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.philly = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "philly";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };
}
