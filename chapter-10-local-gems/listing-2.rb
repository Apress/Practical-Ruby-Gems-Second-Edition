require 'bundler'
Bundler.require
total_items = 100
progress_bar = ProgressBar.create(total: total_items, format: '%p%% %B %a %t')
(1..total_items).to_a.shuffle.each do |_|
  sleep rand(0.005..0.2)
  progress_bar.increment
end
puts "Task completed."
