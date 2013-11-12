#!/bin/bash

for d in ~/Desktop/apks/*.apk
do
	python DexScope.py -a $d
done
