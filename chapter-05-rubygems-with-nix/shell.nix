# Import the Nix package collection
with import <nixpkgs> {};

# Create a Ruby environment with specific packages
ruby.withPackages (ps: with ps; [
  # Include the Nokogiri gem for XML/HTML parsing
  nokogiri
])
