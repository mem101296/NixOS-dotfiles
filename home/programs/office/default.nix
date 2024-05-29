{pkgs, ...}: {
  home.packages = with pkgs; [
    libreoffice
    notion-app-enhanced
  ];
}

