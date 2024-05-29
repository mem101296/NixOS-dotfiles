let
  unus = [
    ./core
    ./hardware/opengl.nix
    ./programs
    ./services
    ./services/teamviewer.nix
  ];

in {
  inherit unus;
}
