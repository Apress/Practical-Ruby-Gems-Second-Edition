require 'rubygems/commands/update_command'

# Instantiate UpdateCommand
update_command = Gem::Commands::UpdateCommand.new
update_command.handle_options(['nokogiri'])
update_command.execute
