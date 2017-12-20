
BUILD="./build/j2objc"

rm -rf $BUILD

mkdir -p $BUILD/{java,objc,bin}

find "./src/main" -name '*.java' -type f -exec cp {} "$BUILD/java/" \;
find "./src/main" -type f -name 'packages.properties' -exec cat {} + >> "$BUILD/java/packages.properties" ;
find "../json/src/main" -type f -name 'packages.properties' -exec cat {} + >> "$BUILD/java/packages.properties" ;

CLASS_PATH="./src/main/java:../json/src/main/java"

for f in $BUILD/java/*.java; do

	echo $f
  FILE_NAME=`basename $f`
	NAME=${FILE_NAME//".java"/""}
	FILE_M="${NAME}.m"

	j2objc -d $BUILD/objc \
    -sourcepath "$BUILD/java/**.java" \
    -classpath $CLASS_PATH \
    -use-arc --prefixes $BUILD/java/packages.properties \
    --swift-friendly \
    --verbose \
    --no-package-directories $f

done

rm -R ios/Classes/*
cp $BUILD/objc/* ios/Classes
