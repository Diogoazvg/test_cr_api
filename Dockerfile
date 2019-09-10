FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y nodejs sqlite3 libsqlite3-dev
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN chown -R $USER:$USER .
USER $USER
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
