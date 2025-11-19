#!/usr/bin/env ruby

require 'rubygems/uninstaller'

def uninstall_non_default_gems
  Gem::Specification.reject { |spec| spec.default_gem? }.each do |gem_spec|
    uninstaller = Gem::Uninstaller.new(
      gem_spec.name,
      version: gem_spec.version,
      force: true,
      executables: true
    )
    uninstaller.uninstall
  end
end

def main
  puts "Uninstalling non-default gems..."
  uninstall_non_default_gems
  puts "Uninstallation complete."
end

if __FILE__ == $PROGRAM_NAME
  main
end
