require 'bundler'

def get_env
  ENV.to_hash.merge({'Gem.path'=>Gem.path, '$LOAD_PATH'=>$LOAD_PATH})
end

initial_env = get_env
Bundler.setup
final_env = get_env

puts "Environment changes after Bundler.setup:"
(final_env.keys || initial_env.keys).each do |key|
  start_value = initial_env[key]; end_value = final_env[key]
  if start_value != end_value
    puts "#{key}\n\twas:#{start_value}\n\tis:#{end_value}"
  end
end
