$ rake rubocop
Running RuboCop...
The following cops were added to RuboCop, but are not configured. Please set Enabled to either `true` or `false` in your `.rubocop.yml` file.
Please also note that you can opt-in to new cops by default by adding this to your config:
  AllCops:
    NewCops: enable
Gemspec/AddRuntimeDependency: # new in 1.65
  Enabled: true
Style/SuperWithArgsParentheses: # new in 1.58
  Enabled: true
... snip ...
Inspecting 8 files
.....W..
Offenses:
my_first_gem.gemspec:10:40: C: [Correctable] Style/StringLiterals: Prefer double-quoted strings unless you need single quotes to avoid extra backslashes for escaping.
  spec.license                       = 'MIT'
                                       ^^^^^
my_first_gem.gemspec:15:40: W: Gemspec/RequiredRubyVersion: required_ruby_version and TargetRubyVersion (3.0, which may be specified in .rubocop.yml) should be equal.
  spec.required_ruby_version         = ">= 2.6.0"
                                       ^^^^^^^^^^
8 files inspected, 2 offenses detected, 1 offense autocorrectable
RuboCop failed!