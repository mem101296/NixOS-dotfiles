#this is to mount nfs on boot
{ config, nixpkgs, pkgs, vars, lib, ... }:
with lib;

{
  boot.supportedFilesystems = [ "nfs" ];
  services.rpcbind.enable = true;
  environment.systemPackages = with pkgs; [
    pkgs.nfs-utils
  ];
  #fileSystems."/home/exspiravit/files" = {
  #  device = "10.150.70.200:/mnt/Pool1/DataSet";
  #  fsType = "nfs";
  #  options = [ "nfsvers=4" ];
  #};
  fileSystems."/home/exspiravit/HoloVault" = {
    device = "10.150.70.200:/mnt/Pool1/DataSet/holovault";
    fsType = "nfs";
    options = [ "nfsvers=4" ];
  };
}
