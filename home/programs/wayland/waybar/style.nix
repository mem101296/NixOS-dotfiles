{

    programs.waybar.style = 


        ''

            * {
                border: #00cdcd;
                border-radius: 5px;
                /* font-family: AestheticIosevka Nerd Font Mono, Iosevka, Noto Sans CJK; */
                font-family: LigaSFMono Nerd Font, ibm-plex, FontAwesome, Noto Sans CJK;
                font-size: 13px;
                font-weight: bold;
                font-style: normal;
                min-height: 0;
            }

            window.m1-left#waybar {
                background: rgba(0,28,28,0.9);
                border-top-right-radius: 20px;
                border-bottom-right-radius: 20px;
                border-top-left-radius: 0px;
                border-bottom-left-radius: 0px;
                border-right: 3px solid #00cdcd;
                color: #cdd6f4;
            }

            window.m1-right#waybar {
                background: rgba(0,28,28,0.9);
                border-top-right-radius: 0px;
                border-bottom-right-radius: 0px;
                border-top-left-radius: 20px;
                border-bottom-left-radius: 20px;
                border-left: 3px solid #00cdcd;
            }

            window.m2-left#waybar {
                background: rgba(0,28,28,0.9);
                border-top-right-radius: 20px;
                border-bottom-right-radius: 20px;
                border-top-left-radius: 0px;
                border-bottom-left-radius: 0px;
                border-right: 3px solid #00cdcd;

            }

            window.m2-right#waybar {
                background: rgba(0,28,28,0.9);
                border-top-right-radius: 0px;
                border-bottom-right-radius: 0px;
                border-top-left-radius: 20px;
                border-bottom-left-radius: 20px;
                border-left: 3px solid #00cdcd;
                color: #cdd6f4
            }

            /*###################*/
            /*Workspaces*/
            /*###################*/


#workspaces.m1 {
	background: rgba(0, 0, 0, 1);
    border-radius: 0px; /*tlfet,tright,bright,bleft*/
    border-left: 0px solid #00cdcd;
    border-top: 0px solid #00cdcd;
    margin: 0px 0px 0px 3px; /*top,right,bottom,left*/
    padding: 0px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: 0px 0px 0px 0px rgba(0,205,205,0.35); /*hor,vert,blur,spread*/
}

#workspaces.m2 {
	background: rgba(0, 0, 0, 1);
    border-radius: 0px; /*tlfet,tright,bright,bleft*/
    border-right: 0px solid #00cdcd;
    border-top: 0px solid #00cdcd;
    margin: 0px 3px 0px 0px; /*top,right,bottom,left*/
    padding: 0px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: 0px 0px 0px 0px rgba(0,205,205,0.35); /*hor,vert,blur,spread*/
}

#workspaces.m1 button {
    color: #242f33;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    padding: 5px; /*top,right,bottom,left*/
}

#workspaces.m1 button.active {
    color: #00cdcd;
    border-radius: 16px;
    padding: 5px; /*top,right,bottom,left*/
}

#workspaces.m1 button:hover {
	color: #39ff14;
    border-radius: 16px;
    padding: 5px; /*top,right,bottom,left*/
}

#workspaces.m2 button {
    color: #242f33;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    padding: 5px; /*top,right,bottom,left*/
}

#workspaces.m2 button.active {
    color: #00cdcd;
    border-radius: 16px;
    padding: 5px; /*top,right,bottom,left*/;
}

#workspaces.m2 button:hover {
	color: #39ff14;
    border-radius: 16px;
    padding: 5px; /*top,right,bottom,left*/
}

#custom-spacer.topm1 {
    background-color: rgba(0, 0, 0, 1);
    border-radius: 16px 16px 0px 0px; /*tlfet,tright,bright,bleft*/
    border-left: 0px solid #00cdcd;
    border-top: 2px solid #00cdcd;
    margin-left: 2px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin: 30px 0px 0px 3px; /*top,right,bottom,left*/
    padding-top: 20px;
    padding-bottom: 0px;
    box-shadow: 0px -8px 9px -1px rgba(0,205,205,0.35); /*hor,vert,blur,spread*/
}

#custom-spacer.middlem1 {
    background-color: rgba(0, 0, 0, 1);
    border-left: 0px solid #00cdcd;
    border-radius: 0px;
    margin-left: 3px;
    margin-right: 0px;
    margin-bottom: 0px;
    padding-top: 40px;
    padding-bottom: 110px;
}
#custom-spacer.bottomm1 {
    background-color: rgba(0, 0, 0, 1);
    border-left: 0px solid #00cdcd;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 16px;
    border-bottom-right-radius: 0px;
    margin: 0px 0px 0px 3px; /*top,right,bottom,left*/
    padding-top: 20px;
    padding-bottom: 100px;
}
#custom-spacer.topm2 {
    background-color: rgba(0, 0, 0, 1);
    border-radius: 16px 16px 0px 0px; /*tlfet,tright,bright,bleft*/
    border-right: 0px solid #00cdcd;
    border-top: 2px solid #00cdcd;
    margin-left: 0px;
    margin-right: 2px;
    margin-bottom: 0px;
    margin: 30px 3px 0px 0px; /*top,right,bottom,left*/
    padding-top: 20px;
    padding-bottom: 0px;
    box-shadow: 0px -8px 9px -1px rgba(0,205,205,0.35); /*hor,vert,blur,spread*/
}

#custom-spacer.middlem2 {
    background-color: rgba(0, 0, 0, 1);
    border-right: 0px solid #00cdcd;
    border-radius: 0px;
    margin-left: 0px;
    margin-right: 3px;
    margin-bottom: 0px;
    padding-top: 40px;
    padding-bottom: 110px;
}
#custom-spacer.bottomm2 {
    background-color: rgba(0, 0, 0, 1);
    border-right: 0px solid #00cdcd;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 16px;
    margin: 0px 3px 0px 0px; /*top,right,bottom,left*/
    padding-top: 20px;
    padding-bottom: 100px;
}

/*###################*/
/*  */
/*###################*/

#custom-power {
	color: #24283b;
	background-color: #db4b4b;
	border-radius: 5px;
	margin-right: 10px;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: 0px;
	padding: 5px 10px;
}

#tray {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
}
#tray.m1 {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    border-right: 2px solid #00cdcd;
    margin: 0px 2px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#custom-spacer.traym1top {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-top: 2px solid #00cdcd;
    border-right: 2px solid #00cdcd;
    border-radius: 16px 16px 0px 0px; /*tlfet,tright,bright,bleft*/
    margin: 50px 2px 0px 0px ;/*top,right,bottom,left*/
    padding: 5px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}
#custom-spacer.traym1bottom {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-bottom: 2px solid #00cdcd;
    border-right: 2px solid #00cdcd;
    border-radius: 0px 0px 16px 16px; /*tlfet,tright,bright,bleft*/
    margin: 0px 2px 20px 0px ;/*top,right,bottom,left*/
    padding: 0px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: -5px -5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}
#tray.m2 {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    border-left: 2px solid #00cdcd;
    margin: 0px 0px 0px 2px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#custom-spacer.traym2top {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-top: 2px solid #00cdcd;
    border-left: 2px solid #00cdcd;
    border-radius: 16px 16px 0px 0px; /*tlfet,tright,bright,bleft*/
    margin: 50px 0px 0px 2px ;/*top,right,bottom,left*/
    padding: 5px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}
#custom-spacer.traym2bottom {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-bottom: 2px solid #00cdcd;
    border-left: 2px solid #00cdcd;
    border-radius: 0px 0px 16px 16px; /*tlfet,tright,bright,bleft*/
    margin: 0px 0px 20px 2px ;/*top,right,bottom,left*/
    padding: 0px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: 5px -5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}

/*###################*/
/*Clock*/
/*###################*/

#clock {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    font-weight: bold;
    font-size: 18px;
}

#clock.m1 {
    margin: 0px 3px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
    /*border-left: solid 1px #282738;*/
    /*https://howardhinnant.github.io/date/date.html#to_stream_formatting*/
}
#clock.datem1 {
    /*color: #00cdcd;*/
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 16px;
    border-bottom-right-radius: 16px;
    border-right: 2px solid #00cdcd;
    border-bottom: 2px solid #00cdcd;
    border-top: 0px solid #00cdcd;
    margin: 0px 1px 0px 0px; /*top,right,bottom,left*/
    padding: 0px 10px 20px 10px; /*top,right,bottom,left*/
    box-shadow: -5px -5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
    /*border-left: solid 1px #282738;*/
    /*https://howardhinnant.github.io/date/date.html#to_stream_formatting*/
}

#clock.m2 {
    margin: 0px 0px 0px 3px; /*top,right,bottom,left*/
    padding: 10px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
    /*border-left: solid 1px #282738;*/
    /*https://howardhinnant.github.io/date/date.html#to_stream_formatting*/
}
#clock.datem2 {
    /*color: #00cdcd;*/
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 16px;
    border-bottom-right-radius: 16px;
    border-bottom: 2px solid #00cdcd;
    border-left: 2px solid #00cdcd;
    margin: 0px 0px 0px 1px; /*top,right,bottom,left*/
    padding: 0px 10px 20px 10px; /*top,right,bottom,left*/
    box-shadow: 5px -5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
    /*border-left: solid 1px #282738;*/
    /*https://howardhinnant.github.io/date/date.html#to_stream_formatting*/
}

#custom-spacer.clockmiddlem1 {
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    margin-left: 0px;
    margin-right: 3px;
    padding-top: 5px;
    padding-bottom: 5px;
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}
#custom-spacer.clocktopm1 {
    background-color: rgba(0,28,28,0.8);
    border-top-left-radius: 0px;
    border-top-right-radius: 20px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    border-top: 0px;
    margin-top: 0px;
    margin-left: 0px;
    margin-right: 3px;
    margin-bottom: 0px;
    padding: 10px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}

#custom-spacer.clockmiddlem2 {
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    margin-left: 3px;
    margin-right: 0px;
    padding-top: 5px;
    padding-bottom: 5px;
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}
#custom-spacer.clocktopm2 {
    background-color: rgba(0,28,28,0.8);
    border-top-left-radius: 20px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    border-top: 0px solid #00cdcd;
    margin-top: 0px;
    margin-left: 3px;
    margin-right: 0px;
    margin-bottom: 0px;
    padding: 10px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}

/*###################*/

#battery {
    color: #9ece6a;
}

#battery.charging {
    color: #9ece6a;
}

#battery.warning:not(.charging) {
    background-color: #f7768e;
    color: #24283b;
    border-radius: 5px 5px 5px 5px;
}

#backlight {
    background-color: #24283b;
    color: #db4b4b;
    border-radius: 0px 0px 0px 0px;
    margin: 5px;
    margin-left: 0px;
    margin-right: 0px;
    padding: 0px 0px;
}

/*###################*/
/*Audio*/
/*###################*/

#pulseaudio {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border: 0px;
    border-radius: 0px;
    font-weight: bold;
    font-size: 18px;
}

#pulseaudio.m1 {
    /*background-color: #004659;*/
    border-top-left-radius: 16px;
    border-top-right-radius: 16px;
    border-top: 2px solid #00cdcd;
    border-right: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px;
    padding: 20px 10px 10px 10px; /*top,right,bottom,left*/
    /*box-shadow: 0px -12px 17px -1px rgba(0,205,205,0.35);*/
    box-shadow: -5px 5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#pulseaudio.microphonem1 {
    border-right: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px;
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#pulseaudio.mutedm1 {
    color: #cd0000;
    margin-left: 0px;
}

#custom-spacer.pulseaudiomiddlem1 {
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    border-right: 2px solid #00cdcd;
    padding: 5px 10px 5px 10px; /*top,right,bottom,left*/
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}
#custom-spacer.pulseaudiobottomm1 {
    background-color: rgba(0,28,28,0.8);
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 20px;
    border-right: 2px solid #00cdcd;
    border-top: 0px solid #00cdcd;
    margin-top: 0px;
    margin-left: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    padding: 10px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}

#pulseaudio.m2 {
    /*background-color: #004659;*/
    border-top-left-radius: 16px;
    border-top-right-radius: 16px;
    border-top: 2px solid #00cdcd;
    border-left: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 20px 10px 10px 10px; /*top,right,bottom,left*/
    /*box-shadow: 0px -12px 17px -1px rgba(0,205,205,0.35);*/
    box-shadow: 5px 5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#pulseaudio.microphonem2 {
    border-left: 2px solid #00cdcd;
    margin: 0px 3px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#pulseaudio.mutedm2 {
    color: #cd0000;
    margin-left: 0px;
}

#custom-spacer.pulseaudiomiddlem2 {
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    border-left: 2px solid #00cdcd;
    padding: 5px 10px 5px 10px; /*top,right,bottom,left*/
    margin: 0px 3px 0px 0px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}
#custom-spacer.pulseaudiobottomm2 {
    background-color: rgba(0,28,28,0.8);
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 20px;
    border-bottom-right-radius: 0px;
    border-top: 0px solid #00cdcd;
    margin: 0px 0px 0px 3px; /*top,right,bottom,left*/
    padding: 10px 10px 0px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
}

/*###################*/

#custom-randwall {
    color: #f4d9e1;
    border-radius: 8px;
    margin-right: 0px;
}

#custom-launcher {
    color: #6791c9;
    background-color: rgba(16,18, 19, 0.0);
    border-radius: 0px 24px 0px 0px; /*top,right,bottom,left*/
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 0px 0px; /*top,right,bottom,left*/
    /*border-right: solid 1px #282738;*/
    font-size: 0px;
}

#custom-launcher button:hover {
    background-color: #FB4934;
    color: transparent;
    border-radius: 8px;
    margin-right: -5px;
    margin-left: 10px;
}

#custom-playerctl {
	background: #0c0e0f;
	padding-left: 15px;
  padding-right: 14px;
	border-radius: 16px;
  /*border-left: solid 1px #282738;*/
  /*border-right: solid 1px #282738;*/
  margin-top: 5px;
  margin-bottom: 5px;
  margin-left: 0px;
  font-weight: normal;
  font-style: normal;
  font-size: 16px;
}

#custom-playerlabel {
    background: transparent;
    padding-left: 10px;
    padding-right: 15px;
    border-radius: 16px;
    /*border-left: solid 1px #282738;*/
    /*border-right: solid 1px #282738;*/
    margin-top: 5px;
    margin-bottom: 5px;
    font-weight: normal;
    font-style: normal;
}

#window {
    background: #0c0e0f;
    padding-left: 15px;
    padding-right: 15px;
    border-radius: 16px;
    /*border-left: solid 1px #282738;*/
    /*border-right: solid 1px #282738;*/
    margin-top: 5px;
    margin-bottom: 5px;
    font-weight: normal;
    font-style: normal;
}

#custom-wf-recorder {
    padding: 0 20px;
    color: #e5809e;
    background-color: #1E1E2E;
}

/*###################*/
/*Temperature*/
/*###################*/

#temperature {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    font-weight: bold;
    font-size: 18px;
}
#temperature.m1 {
    border-top-left-radius: 16px;
    border-top-right-radius: 16px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    border-top: 2px solid #00cdcd;
    border-right: 2px solid #00cdcd;
    margin-top: 20px;
    margin-left: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    /*box-shadow: 0px -12px 17px -1px rgba(0,205,205,0.35);*/
    box-shadow: -5px 5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#temperature.m2 {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-top-left-radius: 16px;
    border-top-right-radius: 16px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    border-top: 2px solid #00cdcd;
    border-left: 2px solid #00cdcd;
    margin-top: 20px;
    margin-left: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 18px;
    /*box-shadow: 0px -12px 17px -1px rgba(0,205,205,0.35);*/
    box-shadow: 5px 5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

/*###################*/
/*CPU*/
/*###################*/

#cpu {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px;
    font-weight: bold;
    font-size: 18px;
}
#cpu.m1 {
    border-right: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#cpu.m2 {
    border-left: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

/*###################*/
/*Memory*/
/*###################*/

#memory {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    border-radius: 0px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 18px;
}
#memory.m1 {
    border-right: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: -5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#memory.m2 {
    border-left: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    box-shadow: 5px 0px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

/*###################*/
/*Disk*/
/*###################*/

#disk {
    color: #01ffff;
    background-color: rgba(0,28,28,0.8);
    font-weight: bold;
    font-size: 18px;
}
#disk.m1 {
    border-bottom-left-radius: 16px;
    border-bottom-right-radius: 16px;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-right: 2px solid #00cdcd;
    border-bottom: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    /*box-shadow: 0px 12px 17px -1px rgba(0,205,205,0.35);*/
    box-shadow: -5px -5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#disk.m2 {
    border-bottom-left-radius: 16px;
    border-bottom-right-radius: 16px;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom: 2px solid #00cdcd;
    border-left: 2px solid #00cdcd;
    margin: 0px 0px 0px 0px; /*top,right,bottom,left*/
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    /*box-shadow: 0px 12px 17px -1px rgba(0,205,205,0.35);*/
    box-shadow: 5px -5px 2px -1px rgba(0,205,205,0.35) inset; /*hor,vert,blur,spread*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

/*###################*/
/*Network*/
/*###################*/

#network {
    color: #01ffff;
    font-weight: bold;
    font-size: 16px;
}
#network.m1 {
    color: #01ffff;
    margin-top: 15px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 10px;
    padding: 10px 10px 5px 10px; /*top,right,bottom,left*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#network.m1speedup {
    color: #01ffff;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 10px;
    padding: 5px 10px 5px 10px; /*top,right,bottom,left*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#network.m1speedown {
    color: #01ffff;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 10px;
    padding: 5px 10px 5px 10px; /*top,right,bottom,left*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#network.m2 {
    color: #01ffff;
    margin-top: 15px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 10px;
    padding: 10px 10px 5px 10px; /*top,right,bottom,left*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#network.m2speedup {
    color: #01ffff;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 10px;
    padding: 5px 10px 5px 10px; /*top,right,bottom,left*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#network.m2speedown {
    color: #01ffff;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 10px;
    padding: 5px 10px 5px 10px; /*top,right,bottom,left*/
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

/*###################*/
/* Custom */
/*###################*/

#custom-hyprpicker {
    /*color: #8EC07C;*/
    border-radius: 16px;
    margin: 5px;
    margin-left: 5px;
    margin-right: 5px;
    padding: 0px 11px 0px 9px;
    font-weight: bold;
}
/*Launchers */
#custom-browserm1 {
    color: #01ffff;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 30px;
    padding: 20px 10px 15px 10px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 25px;
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#custom-browserm2 {
    color: #01ffff;
    border-radius: 16px;
    margin-top: 10px;
    margin-left: 0px;
    margin-right: 0px;
    margin-bottom: 30px;
    border-left: 0px;
    border-top: 0px;
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 25px;
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#custom-terminalm1 {
    color: #01ffff;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 30px;
    padding: 20px 10px 15px 10px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 25px;
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#custom-terminalm2 {
    color: #01ffff;
    border-radius: 16px;
    margin-top: 10px;
    margin-left: 0px;
    margin-right: 0px;
    margin-bottom: 30px;
    border-left: 0px;
    border-top: 0px;
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 25px;
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}
#custom-filesm1 {
    color: #01ffff;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 0px;
    margin-bottom: 30px;
    padding: 20px 10px 15px 10px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 25px;
    text-shadow: 5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

#custom-filesm2 {
    color: #01ffff;
    border-radius: 16px;
    margin-top: 10px;
    margin-left: 0px;
    margin-right: 0px;
    margin-bottom: 30px;
    border-left: 0px;
    border-top: 0px;
    padding: 10px 10px 10px 10px; /*top,right,bottom,left*/
    font-weight: bold;
    font-size: 25px;
    text-shadow: -5px 0px 2px rgba(0,205,205,0.45); /*hor,vert,blur,op*/
}

        '';
}
