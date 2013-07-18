#!/bin/bash

for d in Tests/Test_Cases/AllBinaries/*
do
	python DexScope.py "$d/classes.dex"
done
