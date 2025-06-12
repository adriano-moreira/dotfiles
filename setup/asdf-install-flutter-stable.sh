#!/bin/bash -ex

asdf plugin add flutter

# install last stable
LAST_FLUTTER_STABLE=`asdf list all flutter | grep stable | tail -n 1`
asdf install flutter $LAST_FLUTTER_STABLE
asdf set -u flutter $LAST_FLUTER_STABLE

flutter doctor
