spec.bindir = "exe"
spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.
basename(f) }
