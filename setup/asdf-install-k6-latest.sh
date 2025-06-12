#!/bin/bash -ex

asdf plugin add k6

LATEST=`asdf list all k6 | grep -v rc | grep . | tail -n 1`

asdf install k6 $LATEST
asdf set -u k6 $LATEST

k6 --version