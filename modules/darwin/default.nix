{ pkgs, ... }: {
  # Darwin preferences and configuration items

  # Enable zsh as the default shell
  programs.zsh.enable = true;

  environment = {
    # List of available shells
    shells = with pkgs; [ bash zsh ];

    # Set the login shell to zsh
    loginShell = pkgs.zsh;

    # Add coreutils to the system packages
    systemPackages = [ pkgs.coreutils ];

    # Set the system path
    systemPath = [ "/opt/homebrew/bin" ];

    # Set paths to link
    pathsToLink = [ "/Applications" ];
  };

  # Enable experimental Nix features
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  # Enable key mapping and remap Caps Lock to Escape
  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToEscape = true;

  # Enable custom font directory (use with caution)
  fonts.fontDir.enable = true;
  fonts.fonts = [ (pkgs.nerdfonts.override { fonts = [ "Meslo" ]; }) ];

  # Enable Nix daemon service
  services.nix-daemon.enable = true;

  # Set system default preferences
  system.defaults = {
    finder.AppleShowAllExtensions = true;
    finder._FXShowPosixPathInTitle = true;
    dock.autohide = true;
    NSGlobalDomain.AppleShowAllExtensions = true;
    NSGlobalDomain.InitialKeyRepeat = 14;
    NSGlobalDomain.KeyRepeat = 1;
  };

  # Maintain backwards compatibility; do not change
  system.stateVersion = 4;

  # Homebrew configuration
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    masApps = { };
    casks = [ "raycast" "amethyst" ];
    taps = [ "fujiapple852/trippy" ];
    brews = [ "trippy" ];
  };
}
