#!/bin/sh

set -e

gem install haml-lint

ruby /action/lib/index.rb
