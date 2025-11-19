FROM ruby:3.3

WORKDIR /app

RUN apt-get update && apt-get install -y libvips-dev

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT ["ruby", "ruby-asciiart.rb"]
