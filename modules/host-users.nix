{ ... } @ args:

#############################################################
#
#  Host & Users configuration
#
#############################################################

let
  # TODO change this to your hostname
  hostname = "macbook-air-m2";
  username = "jerry";
in
{
  networking.hostName = hostname;
  networking.computerName = hostname;
  system.defaults.smb.NetBIOSName = hostname;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."${username}" = {
    home = "/Users/${username}";
    description = username;
  };

  nix.settings.trusted-users = [ username ];
}
