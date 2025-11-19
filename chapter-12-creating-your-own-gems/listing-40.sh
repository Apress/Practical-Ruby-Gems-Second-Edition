$ bundle gem testgem
$ cd testgem
$ bundle exec rake -T
rake build                    # Build testgem-0.1.0.gem into the pkg directory
rake build:checksum           # Generate SHA512 checksum if testgem-0.1.0.gem into the chec...
rake clean                    # Remove any temporary products
rake clobber                  # Remove any generated files
rake install                  # Build and install testgem-0.1.0.gem into system gems
rake install:local            # Build and install testgem-0.1.0.gem into system gems withou...
rake release[remote]          # Create tag v0.1.0 and build and push testgem-0.1.0.gem to T...
rake rubocop                  # Run RuboCop
rake rubocop:autocorrect      # Autocorrect RuboCop offenses (only when it's safe)
rake rubocop:autocorrect_all  # Autocorrect RuboCop offenses (safe and unsafe)
rake test                     # Run tests
rake test:cmd                 # Print out the test command
rake test:isolated            # Show which test files fail when run in isolation
rake test:slow                # Run the test suite and report the slowest 25 tests
