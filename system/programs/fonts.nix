{ pkgs, ... }:

{
  fonts = {
      packages = with pkgs; [
        comic-mono #for terminal
        meslo-lgs-nf #for waybar
        jetbrains-mono #for waybar
        nerdfonts #for everything

        #testing
        ibm-plex
        inconsolata
        iosevka

        #additional noto stuff
        noto-fonts-emoji
        noto-fonts-cjk
      ];

      #enableDefaultPackages = false;

      #fontconfig.defaultFonts = {
      #    serif = ["Noto Serif" "Noto Color Emoji"];
          #sansSerif = ["Inter" "Noto Color Emoji"];
      #    monospace = ["JetBrains Mono" "Noto Color Emoji"];
      #    emoji = ["Noto Color Emoji"];
     # };
    };
}
