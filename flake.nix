{
  description = "A flake for installing my st build";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

  outputs = {
    self,
    nixpkgs,
    ...
  }:
    with import nixpkgs {system = "x86_64-linux";}; let
      st-tanish2002 = pkgs.st.overrideAttrs (o: {
        src = self;
        buildInputs = o.buildInputs ++ [pkgs.harfbuzz];
      });
    in {
      defaultPackage.x86_64-linux = st-tanish2002;
      # tools for development
      devShell.x86_64-linux = pkgs.mkShell {
        packages =
          [pkgs.clang-tools]
          ++ st-tanish2002.buildInputs
          ++ st-tanish2002.nativeBuildInputs;
      };
    };
}
