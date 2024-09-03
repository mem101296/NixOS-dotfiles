{
  config,
  pkgs,
  ...
}: {
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      ignore-empty-password = true;
      font = "Notos Sans";
      clock = true;
      timestr = "%R";
      screenshot = true;
      fade-in = "0.2";
      effect-vignette = "0.1:0.7";
      effect-blur = "15x2";
      effect-scale = "0.1";
      indicator = true;
      indicator-radius = "110";
      indicator-thickness = "10";
      indicator-caps-lock = true;

      key-hl-color = "39ff14";
      
      separator-color = "00000000";
      
      inside-color = "01010133";
      inside-clear-color = "ffd20433";
      inside-caps-lock-color = "009ddc33";
      inside-ver-color = "d9d8d833";
      inside-wrong-color = "ee2e2433";

      ring-color = "00cdcd";
      ring-clear-color = "231f20D9";
      ring-caps-lock-color = "231f20D9";
      ring-ver-color = "231f20D9";
      ring-wrong-color = "231f20D9";

      line-color = "00000000";
      line-clear-color = "ffd204FF";
      line-caps-lock-color = "009ddcFF";
      line-ver-color = "d9d8d8FF";
      line-wrong-color = "ee2e24FF";
      
      text-color = "dededeff";
      text-clear-color = "ffd204ff";
      text-ver-color = "000000ff";
      text-wrong-color = "ee2e24ff";

      bs-hl-color = "ffd204ff";
      caps-lock-key-hl-color = "ffd204FF";
      caps-lock-bs-hl-color = "dededeFF";
      text-caps-lock-color = "009ddcff";
    };
  }; 
}
