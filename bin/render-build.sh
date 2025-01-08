#!/bin/bash
# Este é o shebang correto para garantir que o script use o Bash
export PATH="/usr/local/bin:/usr/bin:$PATH"

# Rodar o build
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
