#!/bin/bash

# SIGTERM-handler
term_handler() {
  exit 143; # 128 + 15 -- SIGTERM
}

trap 'kill ${!}; term_handler' SIGTERM

set -x

fluentd -c /etc/fluent/fluent.conf $FLUENTD_ARGS