#!/bin/sh

read title

dt=$(date +"%Y-%m-%dT%T")
tl=$(date +"%Y-%m-%dT%T-$title" | sha256sum | cut -c1-16)

touch "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"

echo ":page-title     : `echo "$title"`" >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"
echo ":page-signed-by : Deo Valiandro. M <valiandrod@gmail.com>" >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"
echo ":page-layout    : default" >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"
echo ":page-category  : ..." >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"
echo ":page-time      : `echo "$dt"`" >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"
echo ":page-update    : `echo "$dt"`" >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"
echo ":page-idn       : `echo "$tl"`" >> "`echo $(date +\"%Y-%m-%d-\")`$tl.adoc"