#!/usr/bin/env ruby
require "bundler/setup"
require "my_first_gem"
require "my_first_gem/cli"
Dry::CLI.new(MyFirstGem::CLI::Commands).call