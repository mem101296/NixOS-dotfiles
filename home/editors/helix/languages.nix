{
pkgs,
lib,
...
}: {
  programs.helix.languages = {
    vscode-css-language-server = {
      command = "/nix/store/jwqq8b6shjqgi9v64icqkbmc53ps8k9h-vscode-css-languageserver-bin-1.4.0/bin/css-languageserver";
      args = ["--stdio"];
      config = {
        provideFormatter = true;
        css.validate.enable = true;
        scss.validate.enable = true;
      };
    };
    language = [
    {
      name = "rust";
      auto-format = true;
    }
    {
      name = "nix";
    }
    {
      name = "toml";
    }
    ];
  };
}
