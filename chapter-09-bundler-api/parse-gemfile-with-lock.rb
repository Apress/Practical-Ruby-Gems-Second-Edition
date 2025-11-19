require 'bundler'

def parse_gemfile(gemfile_path, lockfile_path)
  gemfile = Bundler::Definition.build(gemfile_path, lockfile_path, false)
  gemfile.locked_gems.specs.map do |spec|
    {
             name: spec.name,
          version: spec.version,
           source: spec.source&.to_s
    }
  end
end

gemfile_path      = ARGV[0] || Bundler.default_gemfile
gemfile_lock_path = ARGV[1] || Bundler.default_lockfile
result = parse_gemfile(gemfile_path, gemfile_lock_path)
pp result
