#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

if [[ $RAILS_ENV == production ]]
then
  rails assets:precompile
fi

bundle exec rails s -b 0.0.0.0 -p 6789
