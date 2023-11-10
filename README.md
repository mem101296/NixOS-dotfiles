My Flakes for my NixOS setup. 

To update nix flake config:
sudo nixos-rebuild switch --flake .#desktop

Note: ZSH, Oh-my-zsh, and Powerlevel10k are not yet working

Resources for newbies and myself:

===================================

Video discussing what nixos and nix flakes are
https://www.youtube.com/watch?v=AGVXJ-TIv3Y

Flake templates:
https://github.com/nix-community/home-manager/blob/master/flake.nix

Examples of working nix flakes
1. https://github.com/Hoverbear-Consulting/flake/blob/root/traits/base.nix
2. https://github.com/Misterio77/nix-starter-configs/blob/main/standard/flake.nix
3. https://github.com/Yumasi/nixos-home/blob/main/zsh.nix
4. https://github.com/pecigonzalo/malob-nixpkgs/blob/master/flake.nix
5. https://github.com/MatthiasBenaets/nixos-config/blob/master/hosts/configuration.nix
6. https://github.com/Jomik/dotfiles/blob/0829f512373bd6c2328a20f946019125039d46da/.config/nixpkgs/configurations/zsh.nix
7. https://github.com/gilescope/nix-all


flakes + ZSH resources
https://github.com/nix-community/home-manager/issues/1338
https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
https://github.com/nix-community/home-manager/issues/1224
https://discourse.nixos.org/t/programs-zsh-ohmyzsh-explained/2791/
https://nixos.wiki/wiki/Zsh

NixOS Wiki
https://nixos.wiki/wiki/Main_Page
https://nix-community.github.io/home-manager/options.html

NixOS Packages and Package Options search
https://search.nixos.org/packages?channel=23.05

Other resources:
https://www.chrisportela.com/posts/home-manager-flake/

Conver Gnone settings to nix flake
https://github.com/gvolpe/dconf2nix