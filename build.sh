#!/bin/sh

[ -d /tmp/mainwebsite ] && rm -rf /tmp/mainwebsite

mkdir /tmp/mainwebsite
mkdir /tmp/mainwebsite/content

cp -r gozer-files/templates /tmp/mainwebsite/
cp -r gozer-files/config.toml /tmp/mainwebsite/
cp -r index.md about.md /tmp/mainwebsite/content/
cp -r linux other blog devlog coding /tmp/mainwebsite/content/
cp -r static /tmp/mainwebsite/public

cd /tmp/mainwebsite
gozer build
[ "$1" = "serve" ] && gozer serve
