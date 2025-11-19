require 'rubygems/specification'
require 'rexml/document'

class Gem::Specification
  def to_xml
    doc = REXML::Document.new
    root = doc.add_element('gem_specification')

    Gem::Specification.attribute_names.each do |attr|
      value = self.send(attr)
      next if value.nil? || (value.respond_to?(:empty?) && value.empty?)

      element = root.add_element(attr.to_s)
      case value
      when Array
        value.each { |item| element.add_element('item').text = item.to_s }
      when Hash
        value.each do |key, val|
          sub_element = element.add_element('entry')
          sub_element.add_element('key').text = key.to_s
          sub_element.add_element('value').text = val.to_s
        end
      else
        element.text = value.to_s
      end
    end

    formatter = REXML::Formatters::Pretty.new(2)
    formatter.compact = true
    output = ''
    formatter.write(doc, output)
    output
  end
end