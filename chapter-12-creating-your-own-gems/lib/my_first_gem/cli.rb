require 'dry/cli'
require_relative 'version'

module MyFirstGem
  module CLI
    module Commands
      extend Dry::CLI::Registry

      class Version < Dry::CLI::Command
        desc "Print version"

        def call(*)
          puts "MyFirstGem v#{MyFirstGem::VERSION}"
        end
      end

      class Hello < Dry::CLI::Command
        desc "Say hello"

        argument :name, type: :string, default: "World", desc: "Name to greet"

        def call(name: "World", **)
          puts "Hello, #{name}!"
        end
      end

      class Goodbye < Dry::CLI::Command
        desc "Say goodbye"

        argument :name, type: :string, default: "World", desc: "Name to bid farewell"

        def call(name: "World", **)
          puts "Goodbye, #{name}!"
        end
      end

      register "version", Version, aliases: ["v", "-v", "--version"]
      register "hello", Hello, aliases: ["h"]
      register "goodbye", Goodbye, aliases: ["g"]
    end
  end
end
