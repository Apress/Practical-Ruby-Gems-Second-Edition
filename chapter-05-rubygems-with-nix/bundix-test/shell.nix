with import <nixpkgs> {};

let
  gems = bundlerEnv {
    name = "my-ruby-environment";
    gemdir = ./.;
  };
in
mkShell {
  buildInputs = [
    gems
    gems.wrappedRuby
    pandoc
    bundix
  ];
}
