require 'rubygems/commands/pristine_command'

def pristine_all_gems
  Gem::Specification.each do |spec|
    begin
      cmd = Gem::Commands::PristineCommand.new()
      cmd.options[:args] = [spec.name]
      cmd.execute
      puts "Successfully ran pristine on #{spec.name} (#{spec.version})"
    rescue => e
      puts "Error running pristine on #{spec.name}: #{e.message}"
    end
  end
end

if $PROGRAM_NAME == __FILE__
  puts "Starting gem pristine-all process..."
  pristine_all_gems
  puts "Gem pristine-all process completed."
end
