#!/bin/bash

cd build/

sysname=$(uname -s | awk '{ print $1; }')
if [[ $sysname == "Darwin" ]]; then
  dragonruby_zip='dragonruby-gtk-macos.zip'
  sys_type='macos'
else
  sys_type='linux'
  dragonruby_zip='dragonruby-gtk-linux-amd64.zip'
fi
extract_dir_name="dragonruby-$sys_type"

pwd

if [[ -e ./tmp/.itch.toml ]]; then
  rm ./tmp/.itch.toml
fi

if [[ -d ./tmp/$extract_dir_name ]]; then
  echo "./tmp/$extract_dir_name exists!"
  rm -rf ./tmp/$extract_dir_name
fi

echo "Moving $dragonruby_zip to tmp/"
cp $dragonruby_zip tmp/
cd tmp/
echo "Unzipping $dragonruby_zip"
unzip $dragonruby_zip
cd $extract_dir_name

echo "Moving dragonruby files to app dir"
cp dragonruby* ../../../

echo "Ready to ride!"

