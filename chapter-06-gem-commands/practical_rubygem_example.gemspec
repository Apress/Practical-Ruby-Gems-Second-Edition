Gem::Specification.new do |spec|
  spec.name = "practical_rubygem_example"
  spec.version = "0.1.0"
  spec.authors = ["Your Name"]
  spec.email = ["your.email@example.com"]
  spec.summary = "A practical example of a Ruby gem"
  spec.description = "This gem demonstrates how to create a basic Ruby gem with common functionality"
  spec.homepage = "https://lotsofgitrepos.com/yourusername/practical_rubygem_example"
  spec.license = "MIT"
  spec.files = Dir["lib/**/*", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.5.0"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "httparty", "~> 0.18"
end
