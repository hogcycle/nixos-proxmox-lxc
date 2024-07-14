{ pkgs, ...}: 
{
  system.stateVersion = "24.11";
  users.users.nixos =
    {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIbtvGsRqXeaWMxilWAfzqCi2ng6Aiiy7xp8oBh+Ugiq nate@repono"
      ];
    };
  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = false;
    settings.KbdInteractiveAuthentication = false;
    settings.PermitRootLogin = "no";
  };
  security.sudo.wheelNeedsPassword = false;
  environment.systemPackages = with pkgs; [
    vim
    binutils
    wget 
  ];
}
