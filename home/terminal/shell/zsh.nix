{ config, lib, pkgs, ...}: 

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    #enableAutosuggestions = true;
    enableCompletion = true;
    autocd = true;
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "romkatv/powerlevel10k"; tags = [as:theme, depth:1]; }
        { name = "numbnet/zsh-syntax-highlighting"; tags = [defer:2]; }
        { name = "marlonrichert/zsh-autocomplete";}
        { name = "hsienjan/colorize"; }
      ];
    };
    dotDir = ".config/zsh";
    #promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    #oh-my-zsh = {
    #  enable = true;
    #  package = pkgs.oh-my-zsh;
    #  plugins = [ "git" "colorize" "colored-man-pages" ];
      #theme = "pklevel10k";
    #};
    initExtra = ''
      #enable zellij
      #if [[ -z "$ZELLIJ" ]]; then
      #  if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
      #    zellij attach -c
      #  else
      #    zellij
      #  fi

      #  if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
      #    exit
      #  fi
      #fi
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      test -f ~/.config/zsh/.pk10.zsh && source ~/.config/zsh/.p10k.zsh

#      eval "$(zellij setup --generate-auto-start zsh)"
        
      unsetopt BEEP
      DEFAULT_USER = exspiravit prompt_context(){}

      # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      
    '';
    shellAliases = { 
      #ls = "yazi"; 
    };
  };
}
