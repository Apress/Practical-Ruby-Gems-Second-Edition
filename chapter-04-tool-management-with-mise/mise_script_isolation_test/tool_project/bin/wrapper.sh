#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"
cd ..
pwd

mise exec ruby -- ruby ./bin/script.rb "$@"