# Import the Nix package collection
{pkgs ? import <nixpkgs> { } }:

# Define a let block for local variable definitions
let
  # Create a custom Ruby environment
  customRuby = pkgs.ruby.override {
    # Override the default gem configuration
    defaultGemConfig = pkgs.defaultGemConfig // {
      # Specify a custom version for nokogiri
      nokogiri = attrs: { version = "1.16.0"; };
    };
  };
in
# Create a Ruby environment with specific packages
customRuby.withPackages (ps: with ps; [
  # Include the nokogiri gem in the environment
  # This will use the version specified in the custom configuration above
  ps.nokogiri
])
