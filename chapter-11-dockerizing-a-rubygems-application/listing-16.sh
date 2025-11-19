$ docker build  -f Dockerfile.ruby-build-alpine -t ruby-asciiart:ruby-build-alpine
$ docker images --format "table {{.Repository}}:{{.Tag}}\t{{.Size}}" | grep ruby-asciiart | sort -k2 -h
ruby-asciiart:ruby-build-alpine 584MB
ruby-asciiart:clean     914MB
ruby-asciiart:basic     1.2GB
