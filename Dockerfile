FROM ruby:2.3

RUN gem install redis-stat

EXPOSE 63790
ENTRYPOINT ["redis-stat"]
