#!/usr/bin/env sh
# exit on error
set -o errexit

bundle install
bundle update net-pop
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

