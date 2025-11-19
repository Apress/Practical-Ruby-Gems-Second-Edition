require 'bundler'

def parse_gemfile(gemfile_path)
  gemfile = Bundler::Definition.build(gemfile_path, nil, false)
  gemfile.dependencies.map do |dep|
    {
             name: dep.name,
      requirement: dep.requirement.to_s,
           groups: dep.groups,
           source: dep.source&.to_s
    }
  end
end

gemfile_path = ARGV[0] || Bundler.default_gemfile
result = parse_gemfile(gemfile_path)
pp result
