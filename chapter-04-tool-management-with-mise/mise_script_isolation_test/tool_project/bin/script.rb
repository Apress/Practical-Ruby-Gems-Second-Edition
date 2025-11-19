require 'tty-progressbar'

bar = TTY::ProgressBar.new("Progress [:bar]", total: 20)

20.times do
  sleep 0.5
  bar.advance
end

puts "Finished!"