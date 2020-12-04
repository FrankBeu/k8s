#!/usr/bin/env zsh
#
local BASE_DIR=$(dirname $0:h:P)
while true; do
  read "?Press ENTER to start the test"
  ${BASE_DIR}/TEST/dnsTest.zsh
done
