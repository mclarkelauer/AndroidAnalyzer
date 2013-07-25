#!/bin/bash

for d in ~/Downloads/android-samples/*.apk
do
	python DexScope.py -a $d
done
