{ pkgs, config, ... }:

{
  # Doom Emacs configuration files
  # These are placed in ~/.doom.d/ which is set via DOOMDIR env var
  ".doom.d/init.el" = {
    text = builtins.readFile ./config/doom/init.el;
  };

  ".doom.d/config.el" = {
    text = builtins.readFile ./config/doom/config.el;
  };

  ".doom.d/packages.el" = {
    text = builtins.readFile ./config/doom/packages.el;
  };
}
