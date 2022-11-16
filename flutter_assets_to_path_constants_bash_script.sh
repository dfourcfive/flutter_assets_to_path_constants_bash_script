#!/bin/sh
SourcePath=$1;
OutPutPath=$2
OutPutFileName = $3;

if [ -z "$SourcePath" ]; then SourcePath="./assets/*" ; else echo ""; fi
if [ -z "$OutPutPath" ]; then OutPutPath="./lib/" ; else echo ""; fi
if [ -z "$OutPutFileName" ]; then OutPutFileName="assets_constants" ; else echo ""; fi

cat >> ./$OutPutPath/$OutPutFileName.dart << 'END'
END
find $SourcePath -regextype posix-extended -regex ".*.(svg|png|jpg|jpeg)" | while read line; do
    file_path=$line
    clean_file_path=${file_path:2}
    a=($(echo "$file_path" | tr '/' '\n'))
    name=${a[-1]}
    b=($(echo "$name" | tr '.' '\n'))
    name_with_no_extension=${b[0]}
    echo "'$clean_file_path'"
    echo "const $name_with_no_extension = '"$clean_file_path"';"  >> ./lib/$OutPutFileName.dart
done