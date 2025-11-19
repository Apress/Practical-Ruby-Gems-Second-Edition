$ docker images --format "table {{.Repository}}:{{.Tag}}\t{{.Size}}" | grep ruby-asciiart | sort -k2 -h
ruby-asciiart:clean     914MB
ruby-asciiart:basic     1.2GB
