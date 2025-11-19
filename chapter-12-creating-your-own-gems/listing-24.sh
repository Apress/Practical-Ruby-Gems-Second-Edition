$ rake rubocop:autocorrect
Running RuboCop...
Inspecting 8 files
.....W..

Offenses:

my_first_gem.gemspec:5:1: W: [Corrected] Gemspec/RequireMFA:
metadata['rubygems_mfa_required'] must be set to 'true'.
Gem::Specification.new do |spec| ...
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
my_first_gem.gemspec:10:40: C: [Corrected] Style/
StringLiterals: Prefer double-quoted strings unless you need
single quotes to avoid extra backslashes for escaping.
  spec.license                       = 'MIT'
                                       ^^^^^

8 files inspected, 2 offenses detected, 2 offenses corrected
