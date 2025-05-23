#!/bin/bash -ex

asdf plugin add flutter
asdf install flutter 3.32.0-stable
asdf set -u flutter 3.32.0-stable

flutter doctor
