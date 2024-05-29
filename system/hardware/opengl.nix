{pkgs, ...}: {
  # graphics drivers / HW accel
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      amdvlk
    ];
    extraPackages32 = with pkgs; [
      driversi686Linux.amdvlk
    ];


#If mesa breaks disable all:
#    extraPackages = with pkgs; [
#      amdvlk
#      libva
#      vaapiVdpau
#      libvdpau-va-gl
#    ];
#    extraPackages32 = with pkgs.pkgsi686Linux; [
#      vaapiVdpau
#      libvdpau-va-gl
#    ];
  };
}
