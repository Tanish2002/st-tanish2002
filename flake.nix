{
  description = "A flake for installing my st build";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";

  outputs = { self, nixpkgs, ... }: {
    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      pkgs.st.overrideAttrs (o: {
        src = self;
        buildInputs = o.buildInputs ++ [ pkgs.harfbuzz ];
      });
  };
}
