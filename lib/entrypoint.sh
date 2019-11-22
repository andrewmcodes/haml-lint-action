#!/bin/sh

set -e

if [ "${INPUT_BUNDLE}" = "true" ]; then
  bundle install --deployment --jobs 4 --retry 3
elif [ -z "${INPUT_VERSION}" ]; then
  gem install haml-lint
else
  gem install haml-lint -v "${INPUT_VERSION}"
fi

if [ -n "${INPUT_ADDITIONAL_GEMS}" ]; then
  eval "gem install ${INPUT_ADDITIONAL_GEMS}"
fi

ruby /action/lib/index.rb
