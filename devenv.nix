{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    lazygit
  ];

  # https://devenv.sh/languages/
  languages = {
    nix.enable = true;
  };

  # https://devenv.sh/git-hooks/
  git-hooks = {
    hooks = {
      nixfmt-rfc-style.enable = true;

      trim-trailing-whitespace.enable = true;

      typos = {
        enable = true;
        settings.config = {
          default.extend-words = {
            # your own dictionary
          };
        };
      };

      pretty-format-json = {
        enable = true;
        settings = {
          autofix = true;
        };
      };

      yamlfmt = {
        enable = true;
        settings = {
          lint-only = false;
        };
      };
    };
    package = pkgs.prek;
  };

  # https://devenv.sh/reference/options/#applesdk
  # use system sdk, since the default one contains cyclic reference
  apple.sdk = null;

  # See full reference at https://devenv.sh/reference/options/
}
