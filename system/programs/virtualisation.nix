{ pkgs, ... }:

{
  virtualisation.virtualbox = { 
    host = {
      package = pkgs.virtualbox;
      enable = true;
      addNetworkInterface = true;
      enableExtensionPack = true;
    };
    
    guest = {
      enable = true;
    };
  };  
}
