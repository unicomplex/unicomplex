#!/bin/bash

TARGET_DIR="./targets/"

TARGETS=`ls $TARGET_DIR`

for x in $TARGETS; do
	source $TARGET_DIR$x
	DIR=`basename $SOURCE .git`
	git clone $SOURCE
	cd $DIR
	git push $TARGET master
	cd ..
	rm -rf $DIR
done
