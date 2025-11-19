require 'rubygems/version'

def patch_increment(gv)
  new_segments = gv.segments.dup

  if new_segments.length < 3
    new_segments = new_segments.fill(0, new_segments.length...3)
  end

  new_segments[-1] += 1

  Gem::Version.new(new_segments.join('.'))

end

puts patch_increment(Gem::Version.new('3'))
puts patch_increment(Gem::Version.new('3.1'))
puts patch_increment(Gem::Version.new('3.2.0'))
puts patch_increment(Gem::Version.new('3.0.3'))