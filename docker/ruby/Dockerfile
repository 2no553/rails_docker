FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY database.yml /myapp/config/database.yml
COPY puma.rb /myapp/config/puma.rb
RUN bundle install
#COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN mkdir -p tmp/sockets

# Start the main process.
CMD ["bundle", "exec", "puma"]