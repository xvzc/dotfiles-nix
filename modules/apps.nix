{ pkgs, ... }: {

  #  Install all apps and packages here.
  #
  #  NOTE: Your can find all available options in:
  #    https://daiderd.com/nix-darwin/manual/index.html
  # 

  # Install packages from nix's official package repository.
  #
  # The packages installed here are available to all users, and are reproducible across machines, and are rollbackable.
  # But on macOS, it's less stable than homebrew.
  #
  # Related Discussion: https://discourse.nixos.org/t/darwin-again/29331
  environment.systemPackages = with pkgs; [
    neovim
    git
  ];
  environment.variables.EDITOR = "nvim";

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      # 'zap': uninstalls all formulae(and related files) not listed here.
      cleanup = "zap";
    };

    # Applications to install from Mac App Store using mas.
    # You need to install all these Apps manually first so that your apple account have records for them.
    # otherwise Apple Store will refuse to install them.
    # For details, see https://github.com/mas-cli/mas 
    masApps = {
      # TODO: Feel free to add your favorite apps here.
      # See mas list, brew instsall mas
      Xcode = 497799835;
      Telegram = 747648890;
      KakaoTalk = 869223134;
      Gifski = 1351639930;
      Slack = 803453959;
      Magnet = 441258766;
      Numbers = 409203825;
    };

    taps = [
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/services"
      "homebrew/cask-versions"
      "daipeihust/tap"
      "kardolus/chatgpt-cli"
    ];

    # brew install
    brews = [
      "bob"
      "mas"
      "awscli"
      "cmake"
      "kubernetes-cli"
      "coreutils"
      "hugo"
      "im-select"
      "chatgpt-cli"
    ];

    # brew install --cask
    casks = [
      "openvpn-connect"
      "google-chrome"
      "wezterm"
      "alfred"
      "1password"
    ];
  };
}
