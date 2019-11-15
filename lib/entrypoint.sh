#!/bin/sh

set -e

if ["${INPUT_VERSION}" != ""]
then
  gem install haml-lint ${INPUT_ADDITIONAL_GEMS}
else
  gem install haml-lint -v ${INPUT_VERSION} ${INPUT_ADDITIONAL_GEMS}
fi

ruby /action/lib/index.rb
