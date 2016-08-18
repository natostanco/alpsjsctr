#!/bin/sh

apk update
apk add curl bzip2 git
mkdir -p /phantomjs /casperjs /slimerjs

curl -Ls "https://github.com/dustinblackman/phantomized/releases/download/$PH/dockerized-phantomjs.tar.gz" | tar xz -C /
curl -Ls "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PH-linux-x86_64.tar.bz2" | tar xj -C /phantomjs
mv /phantomjs/phantomjs-$PH-linux-x86_64/* /phantomjs
rm -rf /phantomjs/phantomjs-$PH-linux-x86_64

curl -Ls "https://github.com/casperjs/casperjs/archive/$CA.tar.gz" | tar xz -C /casperjs
mv /casperjs/casperjs-$CA/* /casperjs
rm -rf /casperjs/casperjs-$CA

curl -Ls "https://github.com/laurentj/slimerjs/archive/$SL.tar.gz" | tar xz -C /slimerjs
mv /slimerjs/slimerjs-$SL/src/* /slimerjs
rm -rf /slimerjs/slimerjs-$SL

apk add firefox xvfb freetype fontconfig dbus bash
apk del bzip2 git curl

rm /var/cache/apk/*
