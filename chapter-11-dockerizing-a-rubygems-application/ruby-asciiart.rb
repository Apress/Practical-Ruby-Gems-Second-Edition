require 'vips'
require 'optparse'

def image_to_ascii(image_path, text_width = 40)
  image = Vips::Image.new_from_file(image_path)

  aspect_ratio = image.width.to_f / image.height.to_f
  character_aspect_ratio = 8.0/12.0

  text_height = ((text_width / aspect_ratio) * character_aspect_ratio).round 
  
  resized = image.resize(text_width.to_f / image.width)
  
  
  ascii_chars = ' $@B%8&#|()1{}[]?-_+~<>i!lI;:,"^`. '.reverse.split('')
  
  ascii_art = []
  
  text_height.times do |y|
    line = ''
    text_width.times do |x|
      pixel = resized.getpoint(x, y/character_aspect_ratio)
      r, g, b = pixel.map(&:to_i)
      l = estimate_brightness(pixel)
      
      pixel_top_end = 100
      pixel_brightness = [l, pixel_top_end].min
      char_index = (pixel_brightness/pixel_top_end.to_f * (ascii_chars.length - 1)).round

      if char_index < ascii_chars.length - 1
        lower_char = ascii_chars[char_index]
        upper_char = ascii_chars[char_index + 1]
        
        distance = (pixel_brightness/pixel_top_end.to_f * (ascii_chars.length - 1)) - char_index
        
        if rand < distance
          selected_char = upper_char
        else
          selected_char = lower_char
        end
      else
        selected_char = ascii_chars.last
      end
      ansi_color = "\e[38;2;#{r};#{g};#{b}m"
      
      line << "#{ansi_color}#{ascii_chars[char_index]}\e[0m"
    end
    ascii_art << line
  end
  
  ascii_art.join("\n")
end

def estimate_brightness(pixel)
  return (0.299 * pixel[0] + 0.587 * pixel[1] + 0.114 * pixel[2]).round # estimate
end

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby-asciiart.rb [options] <image_file>"
  
  opts.on("-w", "--width WIDTH", Integer, "Output width (default: 40)") do |w|
    options[:width] = w
  end

end.parse!

if ARGV.empty?
  puts "Please provide an image file."
  exit 1
end

image_path = ARGV[0]
width = options[:width] || 40

puts image_to_ascii(image_path, width)
