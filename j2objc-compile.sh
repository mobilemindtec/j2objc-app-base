#!/usr/bin/env bash

if [ -z $J2OBJC_HOME ]; then
    J2OBJC_HOME="/opt/j2objc"
    PATH=$PATH:$J2OBJC_HOME
fi


BUILD="./build/j2objc"

rm -rf $BUILD

mkdir -p $BUILD/{java,objc,bin}

if [ ! -d "tmp/md5" ]; then
    mkdir -p tmp/md5
fi

find "./src/main" -name '*.java' -type f -exec cp {} "$BUILD/java/" \;
find "./src/main" -type f -name 'packages.properties' -exec cat {} + >> "$BUILD/java/packages.properties" ;
find "../j2objc-gson/src/main" -type f -name 'packages.properties' -exec cat {} + >> "$BUILD/java/packages.properties" ;


J2OBJC_LIBS_CLASS_PATH="$J2OBJC_HOME/lib/guava-25.1-jre.jar:$J2OBJC_HOME/lib/guava-25.1-android.jar:$J2OBJC_HOME/lib/jsr305-3.0.0.jar:$J2OBJC_HOME/lib/javax.inject-1.jar"

CLASS_PATH="./src/main/java:../j2objc-gson/src/main/java:${J2OBJC_LIBS_CLASS_PATH}"

echo $CLASS_PATH

for f in $BUILD/java/*.java; do

    FILE_NAME=`basename $f`
	NAME=${FILE_NAME//".java"/""}
	FILE_M="${NAME}.m"

    MD5_FILE_NAME="./tmp/md5/$NAME.md5"
    MD5_CURRENT=`/usr/local/bin/md5sum $f | awk '{ print $1 }'`

    if [ -f "$MD5_FILE_NAME" ]; then
        MD5_OLD=`cat $MD5_FILE_NAME`

        if [ "$MD5_OLD" == "$MD5_CURRENT" ]; then
            echo "** j2objc file $FILE_NAME not changed"
            continue
        fi
    fi

    echo $MD5_CURRENT > $MD5_FILE_NAME

	echo "** j2objc compile $FILE_NAME"

	j2objc -d $BUILD/objc \
    -sourcepath "$BUILD/java/**.java" \
    -classpath $CLASS_PATH \
    --prefixes $BUILD/java/packages.properties \
    --swift-friendly \
    --no-segmented-headers \
    -use-arc \
    --nullability \
    --no-package-directories $f

done


## prepare and copy ios sources to pod project

APP_IOS_SOURCES=ios/J2ObjCAppBase/Classes
#rm -R $APP_IOS_SOURCES/*
if find $BUILD/objc -mindepth 1 | read; then
    cp -r $BUILD/objc/* $APP_IOS_SOURCES/
fi

#APP_SHARE_DEF_HEADER=$APP_IOS_SOURCES/J2ObjCAppBase.h
#
#echo "" > $APP_SHARE_DEF_HEADER
#
#for f in $APP_IOS_SOURCES/*.h; do
#
#  if [ $FILE_NAME == "J2ObjCAppBase.h" ]; then
#    continue
#  fi
#
#	echo "#include \"$FILE_NAME\"" >> $APP_SHARE_DEF_HEADER
#done
