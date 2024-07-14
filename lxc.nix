{ modulesPath, ... }:
{
  imports = [
    ./base.nix
    (modulesPath + "/virtualisation/proxmox-lxc.nix")
  ];
  boot.isContainer = true;
  # Supress systemd units that don't work because of LXC
  systemd.suppressedSystemUnits = [
    "dev-mqueue.mount"
    "sys-kernel-debug.mount"
    "sys-fs-fuse-connections.mount"
  ];
}
