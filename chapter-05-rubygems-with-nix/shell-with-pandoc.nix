{pkgs ? import <nixpkgs> { } }:

pkgs.ruby.withPackages (ps: with ps; [
  # tty-command: A Ruby gem for executing shell commands
  # It provides a simple interface for running system commands from Ruby scripts.
  # Useful for:
  # - Automating system tasks
  # - Interacting with the command line
  # - Capturing command output and exit status
  ps.tty-command

  # pandoc: A universal document converter (system package)
  # While not a Ruby gem, pandoc is included in this environment as a system tool.
  # It's capable of converting files between various markup formats.
  # Useful for:
  # - Converting Markdown to PDF, HTML, or other formats
  # - Transforming documentation between different file types
  # - Creating reports or documents from various source formats
  pkgs.pandoc
])
