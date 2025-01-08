#!/usr/bin/env bash
# exit on error
set -o errexit

# Verify ruby version
ruby -v

# Remove possible Windows line endings
sed -i 's/\r$//' bin/render-build.sh

# Install dependencies
bundle install

# Compile assets
bundle exec rake assets:precompile RAILS_ENV=production
bundle exec rake assets:clean RAILS_ENV=production

# Run migrations
bundle exec rake db:migrate RAILS_ENV=production