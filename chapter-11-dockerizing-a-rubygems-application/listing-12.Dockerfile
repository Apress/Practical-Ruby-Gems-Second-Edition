FROM ruby:3.3-slim
WORKDIR /app
RUN apt-get update && apt-get install -y libvips-dev &&  rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man && apt-get clean
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
ENTRYPOINT ["ruby", "ruby-asciiart.rb"]