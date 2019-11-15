#!/bin/sh

set -e

echo "${INPUT_ADDITIONAL_GEMS}"
gem install haml-lint "${INPUT_ADDITIONAL_GEMS}"

ruby /action/lib/index.rb
