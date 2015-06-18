__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 6 / 10 / 13

__version__ = '0.1'
__status__ = 'Development'

import sys
import os
import json
import fnmatch
import traceback
import re
import pickle
import log
import libraryList
import Analysis

"""
This file contains the analysis logic. The basic order of operations is detailed below.

1) Recursively search directory structure for all *.smali files
2) Parse files looking for dependencies by looking for "invoke" calls
3) Produce a set of dictionaries representing all classes
4) Analyze Dictionary
    a) Remove unused classes
    b) build dependency graph
    c) coalesce dependency graph

Future Features:
    print dependency graph
"""

knowngood =["java","javax","android","json","w3c","apache","xml","google","junit","dalvik","xmlpull"]
SmaliDataTypes = ['F','I','J','C','D','S','B','V']

def generateDependencyGraph(class_list):
    for cl in class_list:
        pass

def __SeparateModules():
    pass

def getDependencies(classes):
    tlds = ["com","org"]
    externalDep = []
    internalClasses = []
    internalDep = []
    libraryDeps = []
    for cl in classes:
        internalClasses.append(cl)
        for method in classes[cl]['Methods']:
            for deps in method['Dependencies']:
                methodDeps = deps.lstrip(" [L.").rstrip(";").split('$')[0].split('/')
                cleanDeps = []
                for level in methodDeps:
                    if level not in tlds:
                        cleanDeps.append(level)
                if cleanDeps.__len__() > 3:
                    externalDep.append(cleanDeps[0] + "/" + cleanDeps[1] + "/" + cleanDeps[2])
                elif cleanDeps.__len__() > 2:
                    externalDep.append(cleanDeps[0] + "/" + cleanDeps[1])
                else:
                    externalDep.append(cleanDeps[0])
    for cl in classes:
        methodDeps = cl.lstrip(" [L.").rstrip(";").split('$')[0].split('/')
        cleanDeps = []
        for level in methodDeps:
            if level not in tlds:
                cleanDeps.append(level)
        if cleanDeps.__len__() > 4:
            internalDep.append(cleanDeps[0] + "/" + cleanDeps[1] + "/" + cleanDeps[2] + "/" + cleanDeps[3])
        elif cleanDeps.__len__() > 3:
            internalDep.append(cleanDeps[0] + "/" + cleanDeps[1] + "/" + cleanDeps[2])
        elif cleanDeps.__len__() > 2:
            internalDep.append(cleanDeps[0] + "/" + cleanDeps[1])
        else:
            internalDep.append(cleanDeps[0])
    unknownExtDeps = []
    for extDep in (set(externalDep) - set(internalDep)):
        if extDep.split("/")[0] in knowngood \
            or extDep in SmaliDataTypes:
            libraryDeps.append(extDep)
        else:
            unknownExtDeps.append(extDep)
    return (set(externalDep)|set(internalDep)), libraryDeps,set(externalDep) - set(internalDep),unknownExtDeps

def findModuleByName(classes):
    pass

def containsModule(classes):
    pass

def findMethodsWithDependencies(classes,dep):
    for cl in classes:
        for meth in classes[cl]['Methods']:
             for deps in meth['Dependencies']:
                if dep in deps:
                    print classes[cl]

def analyzeParsedSmali(classes,sharedobjs):
    # Begin Analysis
    log.info("Analysis Started")
    dependencies = {}
    dependencies["all"],dependencies["internal"],dependencies["external"],dependencies["unknown"] = getDependencies(classes)
    results = Analysis.runAnalysis(classes,dependencies,sharedobjs)
    log.saveLibrariesToPickle(dependencies["all"])
    return results




