require 'rubygems/version'

class Gem::Version
  def patch_increment
    new_segments = self.segments.dup

    if new_segments.length < 3
      new_segments = new_segments.fill(0, new_segments.length...3)
    end

    new_segments[-1] += 1

    Gem::Version.new(new_segments.join('.'))

  end
end

puts Gem::Version.new('3').patch_increment
puts Gem::Version.new('3.1').patch_increment
puts Gem::Version.new('3.2.0').patch_increment
puts Gem::Version.new('3.0.3').patch_increment