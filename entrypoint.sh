#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /procore/tmp/pids/server.pid
# /etc/init.d/memcached start

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

