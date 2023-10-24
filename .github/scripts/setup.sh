#!/bin/bash

set -xeu
set -o pipefail

echo "GITHUB_TAG_NAME=build-$(date +'%Y-%m-%d-%H.%M.%S')" >> $GITHUB_ENV

# gem install bundler
# bundle install

# bundle exec arkana
# bundle exec pod install