#!/usr/bin/env sh
pushd .
cd $HOME/vimclojure
java -server -cp 'src:classes:lib/*:lib/dev/*' com.martiansoftware.nailgun.NGServer 127.0.0.1 &
popd
