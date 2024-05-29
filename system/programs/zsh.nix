{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
#    zsh-autocomplete
#    zsh-syntax-highlighting
#    zsh-autosuggestions
    #zsh-powerlevel10k
    chroma
  ];

  environment.pathsToLink = ["/share/zsh"];
  
  programs = {
    zsh = {
      enable = true;
      #promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    };
  };
}
