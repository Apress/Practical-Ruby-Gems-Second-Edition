require 'rubygems'
require 'rubygems/query_utils'

fetcher = Gem::SpecFetcher.fetcher

specs = fetcher.detect(:latest) do |tuple|

  ARGV.detect { |arg| tuple.name.start_with? arg}

end.map do |tuple|
  name_tuple, source = *tuple
  source.fetch_spec(name_tuple)

end

specs.each do |_|
  puts "#{_.name} #{_.version}\n\tfrom #{_.author}\n\treleased on #{_.date.to_date}"
end