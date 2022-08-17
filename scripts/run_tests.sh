#!/bin/sh
# Run litmus acceptance tests
# -d turns on debugging
debug=0
if [ "$1" == "-d" ]; then
  debug=1
fi
pdk bundle exec rake litmus:reinstall_module && \
RSPEC_DEBUG=${debug} pdk bundle exec rake litmus:acceptance:parallel
