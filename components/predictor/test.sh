#!/bin/bash

exit_code=0

echo "*** Running predictor engine specs"

export BUNDLE_GEMFILE=`pwd`/Gemfile
bundle install | grep Install
bundle exec rspec spec
((exit_code+=$?))

exit $exit_code