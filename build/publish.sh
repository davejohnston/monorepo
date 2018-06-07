#!/bin/bash

make check
COMMIT_SHA=$(git describe --always)
echo "Publishing Commmit SHA image/test:${COMMIT_SHA}"

