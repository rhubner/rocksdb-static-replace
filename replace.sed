s/(JNIEnv\* \w+), jobject,/\1, jclass,/
s/(JNIEnv\* \w+), jobject /\1, jclass /
s/JNIEnv\*, jobject, /JNIEnv\*, jclass, /
s/JNIEnv\*, jobject,/JNIEnv\*, jclass,/
s/(void Java_org_rocksdb_RocksDB_cancelAllBackgroundWork\(JNIEnv\*,) jobject,/\1 jclass,/
s/disposeInternal\(JNIEnv\*, jclass,/disposeInternal\(JNIEnv\*, jobject,/