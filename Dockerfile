FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.60.1

RUN gem install gengiscan --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["gengiscan"]
CMD ["--help"]
