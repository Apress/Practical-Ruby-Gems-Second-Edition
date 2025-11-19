with import <nixpkgs> {};

mkShell {
  buildInputs = [
    ruby
    pandoc
  ];

  PROJECT_ROOT = toString ./.;

  shellHook = ''
            export GEM_HOME="$PROJECT_ROOT/.gems"
            export GEM_PATH="$PROJECT_ROOT/.gems"
            export BUNDLE_GEMFILE="$PROJECT_ROOT/Gemfile"
  '';
}
