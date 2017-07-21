#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

satis build $DIR/src/satis.json $DIR

cd $DIR
git add . && git commit -m "Update auto commit - `date`" && git push
