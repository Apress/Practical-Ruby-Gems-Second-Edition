#!/bin/env nix-shell
#!nix-shell -E "with import <nixpkgs> {}; ruby.withPackages (ps: with ps; [ nokogiri ])" -i ruby

require 'nokogiri'
require 'open-uri'

url = 'http://whattimeisit.com'

# Download the HTML from whattimeisit.com
html = URI.open(url)

# Parse HTML with Nokogiri
doc = Nokogiri::HTML(html)

# Extract and print the current time in UTC
puts doc.css('td font b')[0].text.gsub("\r\n", ' ').gsub(/\s+/, ' ')
