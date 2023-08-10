FROM ruby:3.2.2

ARG USER_ID
ARG GROUP_ID

WORKDIR /usr/src

ENV USER_ID=$USER_ID
ENV GROUP_ID=$GROUP_ID
ENV USER_ID=${USER_ID:-1001}
ENV GROUP_ID=${GROUP_ID:-1001}

RUN addgroup --gid ${GROUP_ID} app
RUN adduser --disabled-password --gecos '' --uid ${USER_ID} --gid ${GROUP_ID} app

RUN apt-get update && apt-get install -y --no-install-recommends \
vim

RUN gem update --system

RUN gem install bundle

RUN chown -R app:app /usr/src
RUN chown -R app:app /usr/local/bundle/
RUN chown -R app:app /usr/local/lib/

USER app

COPY --chown=app:app Gemfile* ./

RUN bundle install

EXPOSE 3000