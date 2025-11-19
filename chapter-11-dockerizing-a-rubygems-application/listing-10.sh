$ docker build -t ruby-asciiart:basic .
[+] Building 0.9s (12/12) FINISHED                                               docker:default
 => [internal] load build definition from Dockerfile                                       0.0s
 => => transferring dockerfile: 222B                                                       0.0s
 => [internal] load metadata for docker.io/library/ruby:3.1                                0.7s
 => [auth] library/ruby:pull token for registry-1.docker.io                                0.0s
 => [internal] load .dockerignore                                                          0.0s
 => => transferring context: 2B                                                            0.0s
 => [1/6] FROM docker.io/library/ruby:3.@sha256:b7fe909968d1e473c5448ee255875bdb65c67df0  0.0s
 => [internal] load build context                                                          0.0s
 => => transferring context: 2.49kB                                                        0.0s
 => CACHED [2/6] WORKDIR /app                                                              0.0s
 => CACHED [3/6] RUN apt-get update && apt-get install -y libvips-dev                      0.0s
 => CACHED [4/6] COPY Gemfile Gemfile.lock ./                                              0.0s
 => CACHED [5/6] RUN bundle install                                                        0.0s
 => [6/6] COPY . .                                                                         0.1s
 => exporting to image                                                                     0.0s
 => => exporting layers                                                                    0.0s
 => => writing image sha256:8721d334ba1433fe3cf704c8ded15604a56b1ce335401ef0c9732447b49f2  0.0s
 => => naming to docker.io/library/ruby-asciiart                                           0.0s