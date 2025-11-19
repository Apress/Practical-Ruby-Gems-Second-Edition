require 'tty-command'
require 'highline'

cli = HighLine.new
url = cli.ask("URL?") { |q| q.default = 'http://whattimeisit.com' }

cmd = TTY::Command.new
output_md_file = 'output.md'

cmd.run("pandoc",
        url,
        "-f", "html" ,
        "-t", "markdown",
        "-o" ,output_md_file)

puts "md file created: #{output_md_file}"
