let
  unus = [
    ./core
    ./hardware/opengl.nix
    ./programs
    ./services
    ./services/teamviewer.nix
    ./services/docker.nix
  ];

in {
  inherit unus;
}
