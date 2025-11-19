$ docker build  -f Dockerfile.wolfi -t ruby-asciiart:wolfi
$ docker images --format "table {{.Repository}}:{{.Tag}}\t{{.Size}}" | grep ruby-asciiart | sort -k2 -h
ruby-asciiart:wolfi        264MB
ruby-asciiart:ruby-build-alpine 584MB
ruby-asciiart:clean     914MB
ruby-asciiart:basic     1.2GB
