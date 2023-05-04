FROM ruby:3.2.2-alpine3.17

ADD . /src
WORKDIR /src

RUN bundle install

EXPOSE 4567

CMD ["/bin/bash"]


