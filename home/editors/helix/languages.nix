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
    rust-analyzer = {
      command = "/nix/store/4sifjcsh53yl99miyczdjvcxz21k284k-rust-analyzer-unwrapped-2024-04-29/bin/rust-analyzer"; 
      #config.rust-analyzer = {
      #cargo.loadOutDirsFromCheck = true;
      #checkOnSave.command = "clippy";
      #procMacro.enable = true;
      #lens = { references = true; methodReferences = true; };
      #completion.autoimport.enable = true;
      #experimental.procAttrMacros = true;
      #};
    };
    language = [
    {
      name = "rust";
      auto-format = true;
      language-servers = [ "rust-analyzer"];
    }
    {
      name = "nix";
      language-servers = [ "nil" ];
    }
    {
      name = "toml";
    }
    ];
  };
}
