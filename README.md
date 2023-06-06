# Suckless st Build

# About This Build
- This is my personal build of st
- All patches were applied manually till this [commit](https://github.com/Tanish2002/st-tanish2002/tree/679cbf784a575911a23b7de2dca295457698d7d3).
- After That commit I've switched to [st-flexipatch](https://github.com/bakkeby/st-flexipatch) with [flexipatch-finalizer](https://github.com/bakkeby/flexipatch-finalizer).
- st-flexipatch has come a long way and it's the best way to patch st currently in my opinion. It takes care of merging upstream so I don't have to deal with merge conflicts.
- The build is based upon this [commit](https://github.com/bakkeby/st-flexipatch/tree/1343b29ee5e8a9d67607a4616f74386a2951e276) of st-flexipatch
- The patches.def.h file can found in the root of repo.

# Installation
- Any Normal Linux Distro
```bash
git clone https://gitlab.com/Tanish2002/st-tanish2002.git
cd st-tanish2002
sudo make install
```
- NixOS
```nix
# flake.nix
inputs.st-tanish2002.url = "github:Tanish2002/st-tanish2002";

# home-manager.nix
home.packages = [ inputs.st-tanish2002.defaultPackage.x86_64-linux ];
```
