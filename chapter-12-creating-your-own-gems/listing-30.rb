spec.bindir        = "exe"
spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.
basename(f) }
