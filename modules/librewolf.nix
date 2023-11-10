#############################################
### This file is under construction still ###
#############################################
{ config, nixpkgs, pkgs, vars, lib, ... }:

with lib.hm.gvariant;

{
    programs.librewolf = {
        enable = true;
        settings = 
        {
            "privacy.clearOnShutdown.history" = false;
            "privacy.clearOnShutdown.downloads" = false;
            "extensions.webextensions.uuids" = "{"formautofill@mozilla.org":"cfb06ce1-cc08-4265-b489-b5e4c95d3e06","pictureinpicture@mozilla.org":"c0cf331d-87e4-4308-a183-7c60526160da","screenshots@mozilla.org":"1a615a0a-32d3-40fd-857a-c3d46c02daf3","webcompat@mozilla.org":"902dfd19-d16b-4626-ab34-46ab2c591624","default-theme@mozilla.org":"cd2a6593-bdda-4ec7-99e0-0585ea5cd760","uBlock0@raymondhill.net":"804f163c-686b-4285-abbf-746b5bb1c04d","addons-search-detection@mozilla.com":"94183dc9-6680-4349-9b4a-38a061a6c8b2","wikipedia@search.mozilla.org":"d6c47401-a803-4c52-916e-14c4d9e3e49a","ddg@search.mozilla.org":"e3a61195-1484-4f74-bb7c-bcd65a99f789"}";
            "browser.startup.page" = 3;
            "browser.policies.runOncePerModification.setDefaultSearchEngine" = Qwant;

        };
    }




}