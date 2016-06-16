#!/bin/bash -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Test: Compile less"
./node_modules/.bin/lessc "$DIR/less/notosans-fontface.less" >/dev/null

echo "Test: Compile scss"
./node_modules/.bin/node-sass "$DIR/scss/notosans-fontface.scss" >/dev/null

