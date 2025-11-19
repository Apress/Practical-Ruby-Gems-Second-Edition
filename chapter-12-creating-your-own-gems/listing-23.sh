$ rake rubocop
Running RuboCop...
Inspecting 8 files
.....W..
Offenses:
my_first_gem.gemspec:5:1: W: [Correctable] Gemspec/RequireMFA: metadata['rubygems_mfa_required'] must be set to 'true'.
Gem::Specification.new do |spec| ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
my_first_gem.gemspec:10:40: C: [Correctable] Style/StringLiterals: Prefer double-quoted strings unless you need single quotes to avoid extra backslashes for escaping.
  spec.license                       = 'MIT'
                                       ^^^^^
8 files inspected, 2 offenses detected, 2 offenses
autocorrectable
RuboCop failed!