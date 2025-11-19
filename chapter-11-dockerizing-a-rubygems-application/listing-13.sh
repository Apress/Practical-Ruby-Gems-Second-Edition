$ docker history ruby-asciiart
IMAGE          CREATED       CREATED BY                                      SIZE      COMMENT
c341e1c427a1   3 days ago    ENTRYPOINT ["ruby" "ruby-asciiart.rb"]          0B        buildkit.dockerfile.v0
<missing>      3 days ago    COPY . . # buildkit                             291kB     buildkit.dockerfile.v0
<missing>      3 days ago    RUN /bin/sh -c bundle install # buildkit        25.1MB    buildkit.dockerfile.v0
<missing>      3 days ago    COPY Gemfile Gemfile.lock ./ # buildkit         487B      buildkit.dockerfile.v0
<missing>      3 days ago    RUN /bin/sh -c apt-get update && apt-get ins…   173MB     buildkit.dockerfile.v0
<missing>      3 days ago    WORKDIR /app                                    0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   CMD ["irb"]                                     0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   RUN /bin/sh -c set -eux;  mkdir "$GEM_HOME";…   0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   ENV PATH=/usr/local/bundle/bin:/usr/local/sb…   0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP…   0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   ENV GEM_HOME=/usr/local/bundle                  0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   RUN /bin/sh -c set -eux;   savedAptMark="$(a…   66.3MB    buildkit.dockerfile.v0
<missing>      5 weeks ago   ENV RUBY_DOWNLOAD_SHA256=51aec7ea89b46125a2c…   0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lan…   0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   ENV RUBY_VERSION=3.3.5                          0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   ENV LANG=C.UTF-8                                0B        buildkit.dockerfile.v0
<missing>      5 weeks ago   RUN /bin/sh -c set -eux;  mkdir -p /usr/loca…   45B       buildkit.dockerfile.v0
<missing>      5 weeks ago   /bin/sh -c set -ex;  apt-get update;  apt-ge…   587MB
<missing>      5 weeks ago   /bin/sh -c set -eux;  apt-get update;  apt-g…   177MB
<missing>      5 weeks ago   /bin/sh -c set -eux;  apt-get update;  apt-g…   48.5MB
<missing>      5 weeks ago   /bin/sh -c #(nop)  CMD ["bash"]                 0B
<missing>      5 weeks ago   /bin/sh -c #(nop) ADD file:087f68d5558e06c71…   117MB
