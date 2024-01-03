{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nnn # terminal file manager

    # archives
    zip
    xz
    unzip
    p7zip
    bat
    go
    nodejs

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processer https://github.com/mikefarah/yq
    fzf # A command-line fuzzy finder
    fd
    ripgrep
    terraform
    tmux
    tmuxinator
    perl
    netcat

    gcc
    doxygen
    awscli2
    _1password
    python3

    nmap # A utility for network discovery and security auditing
    gh

    # misc
    cowsay
    file
    which
    tree
    lazygit
    ranger
    kubectl

    # productivity
    glow # markdown previewer in terminal
  ];

  programs = {
    # A modern replacement for ‘ls’
    # useful in bash/zsh prompt, not in nushell.
    eza = {
      enable = true;
      enableAliases = true;
      git = true;
      icons = true;
    };

    # skim provides a single executable: sk.
    # Basically anywhere you would want to use grep, try sk instead.
    skim = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
