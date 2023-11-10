{ config, lib, pkgs, ... }:

with lib;

#just a place holder right now

{
    environment.systemPackages = with pkgs; [
    (lutris.override {
      extraLibraries =  pkgs: [
        # List library dependencies here
      ];
    })
  ];

  environment.systemPackages = with pkgs; [
    (lutris.override {
       extraPkgs = pkgs: [
         # List package dependencies here
       ];
    })
  ];

}