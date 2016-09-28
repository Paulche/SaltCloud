FROM ruby
EXPOSE 80

COPY saltstore /home/saltstore

WORKDIR /home/saltstore

ENV  RAILS_ENV=production

RUN bundle install
RUN bundle exec rake assets:precompile

CMD bundle exec rails server -p 80 -b 0.0.0.0
