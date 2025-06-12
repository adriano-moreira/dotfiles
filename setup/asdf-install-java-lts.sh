#!/bin/bash -ex

asdf plugin add java

LAST_LTS=`asdf list all java | grep -v jre | grep adoptopenjdk | grep LTS | tail -n 1`

asdf install java $LAST_LTS
asdf set -u java $LAST_LTS

java --version