require 'rubygems/specification'

class Gem::Specification

  # Convert Gem::Specification to a hash
  def to_h
    # Initialize an empty hash to store attributes
    result = {}

    # Iterate through all attribute names
    Gem::Specification.attribute_names.each do |attr|
      # Get the value of the attribute using send
      value = self.send(attr)

      # Add the attribute and its value to the result hash
      result[attr] = value
    end

    result
  end
end