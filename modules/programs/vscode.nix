{ config, lib, pkgs, ... }:

with lib;

{

    programs.vscode = {

        enable = true;
        package = pkgs.vscodium;
        extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            pkief.material-icon-theme
        ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        
            {
                name = "theme-monokai-pro-vscode";
                publisher = "monokai";
                version = "1.2.1";
                sha256 = "sha256-tRMuAqI6zqjvOCoESbJfD4fjgnA93pQ06ppvPDuwceQ=";
                
            }
        ];
    
        userSettings = {
            "workbench.colorTheme" = "Monokai Dimmed";
            "search.showLineNumbers" = true;
            "zenMode.hideLineNumbers" = false;
            "files.autoSave" = "afterDelay";
            "workbench.iconTheme" = "material-icon-theme";
            "javascript.updateImportsOnFileMove.enabled" = "never";
            "typescript.updateImportsOnFileMove.enabled" = "never";
            "window.zoomLevel" = 1;
            "editor.fontFamily" = "'Comic Mono', 'Comic Mono Bold'";
        };
    };      

}