#!/bin/sh

read title

dt=$(TZ='Asia/Singapore' date +"%Y-%m-%dT%T")
tl=$(TZ='Asia/Singapore' date +"%Y-%m-%dT%T" | sha256sum | cut -c1-32)

touch "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"

echo -e ":page-title     : `echo "$title"`\n:page-signed-by : Deo Valiandro. M <valiandrod@gmail.com>\n:page-layout    : default\n:page-category  : Struktur Data\n:page-date      : `echo "$dt"`\n" >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"