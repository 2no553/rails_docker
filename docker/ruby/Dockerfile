FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential nodejs

#RUN mkdir /myapp
WORKDIR /srv

COPY Gemfile /srv/Gemfile
COPY Gemfile.lock /srv/Gemfile.lock
RUN bundle install
RUN . /srv

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
#CMD ["rails", "server", "-b", "0.0.0.0"]

# Start puma
RUN mkdir -p puma_shared/sockets
CMD ["bundle", "exec", "puma"]