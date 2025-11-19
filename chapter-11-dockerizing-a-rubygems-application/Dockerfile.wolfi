FROM cgr.dev/chainguard/wolfi-base:latest AS builder

RUN apk add --no-cache ruby-3.2 ruby3.2-gems ruby-3.2-dev libvips build-base

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install

FROM cgr.dev/chainguard/wolfi-base:latest

RUN apk add --no-cache ruby-3.2 ruby3.2-gems libvips

WORKDIR /app

COPY --from=builder /usr/lib/ruby/gems /usr/lib/ruby/gems

COPY *.rb .

USER nonroot

ENTRYPOINT ["ruby", "ruby-asciiart.rb"]
