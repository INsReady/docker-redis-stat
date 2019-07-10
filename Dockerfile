# Phase 1: Build the gem and all dependencies, needs C compiler
FROM ruby:2.4-alpine as builder

RUN apk add --no-cache build-base

ENV GEM_HOME "/gems"

RUN gem install -N redis-stat

# Phase 2: Build the actual docker image, needs no C compiler -> much smaller image
FROM ruby:2.4-alpine

RUN apk add --no-cache ncurses

ENV GEM_HOME "/gems"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

COPY --from=builder /gems /gems

EXPOSE 63790
ENTRYPOINT ["redis-stat"]
