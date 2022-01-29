#!/bin/bash

read msg

git add .
git commit -s -S -am "$msg" --author "Deo Valiandro. M <valiandrod@gmail.com>"
git push -u origin main
git push -u gitlab main
