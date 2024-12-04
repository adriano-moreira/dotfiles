#!/bin/bash -ex

asdf plugin-add flutter
asdf install flutter 3.24.5-stable
asdf global flutter 3.24.5-stable

flutter doctor
