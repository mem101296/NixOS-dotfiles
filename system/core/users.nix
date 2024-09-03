{ pkgs, ... }: 
{
  users.users.exspiravit = {
    isNormalUser = true;
    uid = 1000;
    shell = pkgs.zsh;
    extraGroups = [
      "adbusers"
      "input"
      "libvirtd"
      "networkmanager"
      "wheel"
      "vboxusers"
    ];
  };
}
