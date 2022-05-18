#!/bin/bash
# Project TEMPA
# Martin Herfurt - trifinite.org

echo $1 | protoc --encode=VCSEC.ToVCSECMessage -I . VCSEC.proto | xxd -p -l 100
