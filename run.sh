#!/bin/bash

REPLACE_FILE=options.cc

cd ../rocksdb
git restore java/rocksjni/$REPLACE_FILE
gsed -i -r -f ../rocksdb-static-replace/ColumnFamily.sed java/rocksjni/$REPLACE_FILE
git diff java/rocksjni/$REPLACE_FILE

#s/(JNIEnv\* \w+), jobject /\1, jclass /