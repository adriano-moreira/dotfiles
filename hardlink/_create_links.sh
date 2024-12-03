#!/bin/bash
set -ex

function make_link {
	DIR=`dirname $1`
	mkdir -p $DIR
	echo $1
	ln -f $2 $1
}

make_link $HOME/.config/zed/settings.json zed_settings.json
make_link $HOME/.ideavimrc ideavimrc
