#!/bin/sh

set -e

gem install haml-lint ${INPUT_ADDITIONAL_GEMS}

ruby /action/lib/index.rb
