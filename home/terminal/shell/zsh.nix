{ pkgs, ...}: 

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    #autocd = true;
    history = {
      size = 10000;
    };
    antidote = {
      enable = true;
      plugins = [
        "zsh-users/zsh-autosuggestions"
        "marlonrichert/zsh-autocomplete"
        "hsienjan/colorize"
        "numbnet/zsh-syntax-highlighting"
      ];
    };
    dotDir = ".config/zsh";
    initExtra = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      test -f ~/.config/zsh/.pk10.zsh && source ~/.config/zsh/.p10k.zsh
      unsetopt BEEP
      bindkey "''${key[Up]}" up-line-or-search
      DEFAULT_USER = exspiravit prompt_context(){}

      # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      
    '';
    shellAliases = { 
      files="yazi"; 
    };
  };
}
