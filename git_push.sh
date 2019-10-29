#!/bin/bash

for i in `ls`
do
	git add $i
done

git commit -m "smokeping"
git push -u origin master
