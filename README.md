The nix files I use to build NixOS LXC templates.

Build using

nix run github:nix-community/nixos-generators -- --format proxmox-lxc --configuration lxc.nix

To avoid the [busctl](https://github.com/nix-community/nixos-generators/issues/319) error:

1. Build image
2. Run image
3. Update nix channels as root
4. Reboot.
5. Install desired configuration.nix and attempt to switch to it
6. Force a reboot ``sudo reboot -f``


