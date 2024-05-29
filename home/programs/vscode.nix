#############################################################
### This file is used to enable and theme vscode/vscodium ###
#############################################################
{ config, lib, pkgs, ... }:

with lib;

{

    programs.vscode = {

        enable = true; #enable vscode
        package = pkgs.vscodium; #install vscodium package
        extensions = with pkgs.vscode-extensions; [ #install extensions in the nix pkgs
            bbenoist.nix
            pkief.material-icon-theme
        ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [ #install extension outside the nix pkgs
        
            {
                name = "theme-monokai-pro-vscode";
                publisher = "monokai";
                version = "1.2.1";
                sha256 = "sha256-tRMuAqI6zqjvOCoESbJfD4fjgnA93pQ06ppvPDuwceQ="; #replace with 0's to get sha265
                
            }
        ];
    
        #My settings from my vscode config file
        userSettings = {
            "workbench.colorTheme" = "Monokai Dimmed";
            "search.showLineNumbers" = true;
            "zenMode.hideLineNumbers" = false;
            "files.autoSave" = "afterDelay";
            "workbench.iconTheme" = "material-icon-theme";
            "javascript.updateImportsOnFileMove.enabled" = "never";
            "typescript.updateImportsOnFileMove.enabled" = "never";
            "window.zoomLevel" = 1;
            "editor.fontFamily" = "'Noto Sans'";
        };
    };      

}
