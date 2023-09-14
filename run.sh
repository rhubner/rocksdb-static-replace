#!/bin/bash

cd ../rocksdb
git restore java/rocksjni/rocksjni.cc
gsed -i -r -f ../rocksdb-static-replace/replace.sed java/rocksjni/rocksjni.cc
git diff java/rocksjni/rocksjni.cc

#s/(JNIEnv\* \w+), jobject /\1, jclass /