#!/bin/bash
set -e

java -jar /home/adriano.moreira/github/adriano-moreira/dotfiles/shutdown/jshutdown/target/jshutdown-1.0-SNAPSHOT.jar


sudo shutdown -h now
