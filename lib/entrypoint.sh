#!/bin/sh

set -e

if [ "${INPUT_BUNDLE}" = "true" ]
then
  bundle install --path vendor/bundle --jobs 4 --retry 3
elif [ -z "${INPUT_VERSION}" ]
then
  gem install haml-lint "${INPUT_ADDITIONAL_GEMS}"
else
  gem install haml-lint -v "${INPUT_VERSION}" "${INPUT_ADDITIONAL_GEMS}"
fi

ruby /action/lib/index.rb
