# Generated by carnix 0.10.0: carnix generate-nix --src ./. --standalone
with import <nixpkgs> {};
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
  cratesIO = (callPackage ./crates-io.nix { });
in
rec {
  crates = cratesIO // rec {
# hola-rust-0.1.0

    crates.hola_rust."0.1.0" = deps: { features?(features_.hola_rust."0.1.0" deps {}) }: buildRustCrate {
      crateName = "hola-rust";
      version = "0.1.0";
      authors = [ "Ivan Malison <IvanMalison@gmail.com>" ];
      edition = "2018";
      src = exclude [ ".git" "target" ] ./.;
    };
    features_.hola_rust."0.1.0" = deps: f: updateFeatures f (rec {
      hola_rust."0.1.0".default = (f.hola_rust."0.1.0".default or true);
    }) [];


# end

  };

  hola_rust = crates.crates.hola_rust."0.1.0" deps;
  __all = [ (hola_rust {}) ];
  deps.hola_rust."0.1.0" = {};
}