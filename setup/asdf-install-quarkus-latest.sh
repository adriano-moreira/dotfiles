#!/bin/bash -ex

asdf plugin add quakus

LATEST=`asdf list all quarkus | grep . | tail -n 1`

asdf install quarkus $LATEST
asdf set -u quarkus $LATEST

quarkus --version