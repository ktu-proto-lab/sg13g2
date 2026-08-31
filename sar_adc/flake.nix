{
  description = "IHP SG13G2 Xschem development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        pdk-ciel
        xschem
        ngspice
        gnome-terminal
      ];

      shellHook = ''
        export PDK_ROOT="''${HOME}/.ciel"
        export PDK="ihp-sg13g2"
               echo "IHP SG13G2 development shell"
               echo "PDK_ROOT=$PDK_ROOT"
               echo "PDK=$PDK"
               echo

               echo "ciel:  $(command -v ciel)"
               echo "xschem: $(command -v xschem)"
               echo

               if [ -f "$PDK_ROOT/ihp-sg13g2/libs.tech/xschem/xschemrc" ]; then
                 echo "IHP SG13G2 PDK: found"
               else
                 echo "WARNING: IHP SG13G2 PDK xschemrc not found:"
                 echo "  $PDK_ROOT/ihp-sg13g2/libs.tech/xschem/xschemrc"
                 echo

                 echo "List PDK Versions (the hash looking string):"
          echo "  ciel ls-remote --pdk-family ihp-sg13g2"
          echo

                 echo "Enable the PDK with:"
                 echo "  ciel enable --pdk-family ihp-sg13g2 <version>"
               fi
      '';
    };
  };
}
