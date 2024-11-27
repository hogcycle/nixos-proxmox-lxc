{ modulesPath, pkgs, ...}: 
{
  system.stateVersion = "24.11";
  imports = [ 
    ./base.nix
    ./hardware-configuration.nix
    (modulesPath + "/virtualisation/proxmox-lxc.nix")
  ]; 
  boot.isContainer = true; 
  systemd.suppressedSystemUnits = [
    "dev-mqueue.mount"
    "sys-kernel-debug.mount"
    "sys-fs-fuse-connections.mount"
  ];
}
