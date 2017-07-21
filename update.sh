#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

satis build $DIR/src/satis.json $DIR

git add . && git commit -m "Update - `data`" && git push
