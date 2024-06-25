{ inputs, pkgs, ... }:

{
  imports = [
    #./themes.nix
    ./languages.nix
  ];
  programs.helix = {
    enable = true;
    package = inputs.helix.packages.${pkgs.system}.default.overrideAttrs (old: {
      makeWrapperArgs = with pkgs;
        old.makeWrapperArgs
        or []
        ++ [
          "--suffix"
          "PATH"
          ":"
          (lib.makeBinPath [
            lldb #debug stuff
            clang-tools #For C
            marksman #markdown
            nil #nixos
            nodePackages.bash-language-server #bash
            nodePackages.vscode-css-languageserver-bin #css
            nodePackages.vscode-langservers-extracted
            shellcheck
            taplo #toml
            #rust-analyzer #rust
            #vscode-extensions.vadimcn.vscode-lldb
          ])
          "--set-default"
          "RUST_SRC_PATH"
          "${rustPlatform.rustcSrc}/library"
        ];
    });
    settings = {
      theme = "base16_terminal";
      editor = {
        color-modes = true;
        true-color = true;
        auto-completion = true;
        auto-format = true;
        mouse = false;
        auto-pairs = true;
        indent-guides = {
          render = true;
          rainbow-option = "dim";
        };

        #        rainbow-brackets = true;
      };
      keys.normal = {
        C-a = "jump_view_left";
        C-r = "jump_view_right";
      };
    };
    #themes = {
    #  monokai_pro = {
    #    "ui.background" = "#001c1ccc";  
    #  };
    #};
  };
}
