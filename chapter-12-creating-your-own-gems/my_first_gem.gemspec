# frozen_string_literal: true

require_relative "lib/my_first_gem/version"

Gem::Specification.new do |spec|
  spec.name                          = "my_first_gem"
  spec.version                       = MyFirstGem::VERSION
  spec.authors                       = ["David Berube"]
  spec.email                         = ["djberube@durableprogramming.com"]
  spec.license                       = 'MIT'

  spec.summary                       = "A simple Ruby gem for demonstration purposes."
  spec.description                   = "This gem serves as an example of how to create and structure a Ruby gem."
  spec.homepage                      = "https://example.com/my_first_gem"
  spec.required_ruby_version         = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/djberube/my_first_gem"
  spec.metadata["changelog_uri"]     = "https://github.com/djberube/my_first_gem/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 6.0"
  spec.add_dependency "dry-cli", "~> 1.1"

end
