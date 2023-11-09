#DOES NOT WORK

{ config, lib, pkgs, ... }:

with lib;
{
    programs.zsh = {

        enable = true;
        package = pkgs.oh-my-zsh;
        initExtra = ''
            
            export ZSH="$HOME/.oh-my-zsh"
            unsetopt BEEP
            DEFAULT_USER = exspiravit prompt_context(){}
            [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
        '';
        shellAliases = {
            update="echo test";
        };
        oh-my-zsh = {
            enable = true;
            plugins = [ "git" "zsh-autosuggestions" "zsh-syntax-highlighting" "zsh-autocomplete" "colorize" "colored-man-pages" ];
            theme = "powerlevel10k/powerlevel10k";
        };
    };

}

