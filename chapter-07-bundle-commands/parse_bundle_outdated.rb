require 'json'

def parse_bundle_outdated(output)
  gems = output.split("\n").map do |line|
    line =~ /^([^(]*) *\((.*)\)$/
    name = Regexp.last_match(1)
    parenthetical = Regexp.last_match(2)
    next unless parenthetical
    out = { name: }
    parenthetical.split(',').each do |term|
      lvalue, rvalue = term.strip.split(' ')
      out[lvalue] = rvalue
    end
    out
  end
  puts JSON.pretty_generate(gems.compact)
end

parse_bundle_outdated ARGF.read if __FILE__ == $PROGRAM_NAME
