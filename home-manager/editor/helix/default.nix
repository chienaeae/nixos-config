{
  config,
  lib,
  ...
}:
{
  programs.helix = {
    enable = true;
    settings = lib.importTOML ./config.toml;
    languages = lib.importTOML ./languages.toml;
  };
}
