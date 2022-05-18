#!/bin/bash
# Project TEMPA
# Martin Herfurt - trifinite.org

for msg in $(echo -e "FromVCSECMessage\nToVCSECMessage\n"); do
	echo "--- $msg ---"
	echo $1 | sed "s/ //g" | xxd -r -p | protoc --decode=VCSEC.$msg VCSEC.proto
	echo "-------------"
done
