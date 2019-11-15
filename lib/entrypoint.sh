#!/bin/sh

set -e

echo "$1"
gem install haml-lint "$1"

ruby /action/lib/index.rb
