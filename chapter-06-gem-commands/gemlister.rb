require 'json'
require 'rubygems'

def get_non_default_gems
  Gem::Specification.reject { |spec| spec.default_gem? }
end

def gem_spec_as_hash(gem_spec)
  {
    name: gem_spec.name,
    version: gem_spec.version
  }
end

def main
  get_non_default_gems.each do |gem_spec|
    puts JSON.dump(gem_spec_as_hash(gem_spec))
  end
end

if $PROGRAM_NAME == __FILE__
  main
end
