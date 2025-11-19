require 'rubygems/commands/update_command'

update_command = Gem::Commands::UpdateCommand.new
update_command.update_gem('nokogiri')
