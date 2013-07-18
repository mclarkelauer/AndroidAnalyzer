__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
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

# TODO: ADD MORE ANALYTICS AND ADVERT NETWORKS
analytics = {
    "flurry":"Flurry Analytics"
}

adverts = {
    "wiyun/ad":"Wiyun Mobile Advertising Service",
    "zhuamob":"Zhuamob Ad SDK",
    "ignitevision":"Ignite Vision Ad Network",
    "adwo":"adwo",
    "Millennialmedia":"Millenial Media Advertising",
    }

def is_valid_url(url):
    regex = re.compile(
        r'^https?://'  # http:// or https://
        r'(?:(?:[A-Z0-9](?:[A-Z0-9-]{0,61}[A-Z0-9])?\.)+[A-Z]{2,6}\.?|'  # domain...
        r'localhost|'  # localhost...
        r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' # ...or ip
        r'(?::\d+)?'  # optional port
        r'(?:/?|[/?]\S+)$', re.IGNORECASE)
    regex_nohttp = re.compile(
        r'(?:(?:[A-Z0-9](?:[A-Z0-9-]{0,61}[A-Z0-9])?\.)+[A-Z]{2,6}\.?|'  # domain...
        r'localhost|'  # localhost...
        r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' # ...or ip
        r'(?::\d+)?'  # optional port
        r'(?:/?|[/?]\S+)$', re.IGNORECASE)
    return url is not None and (regex.search(url) or regex_nohttp(url))

def generateDependencyGraph(class_list):
    for cl in class_list:
        pass

def __SeparateModules():
    pass

def findFunctionsBySignature(classes,funcSig):
    methods=[]
    for cl in classes:
        for method in classes[cl]['Methods']:
            #print funcSig['Returns'] + " == " + method['Returns']
            if funcSig['Parameters'] in method['Parameters'] \
                and funcSig['Returns'] in method['Returns']:
                methods.append(method['MethodName'])
    return methods

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
    return set(externalDep)|set(internalDep), libraryDeps,set(externalDep) - set(internalDep),unknownExtDeps

def findModuleByName(classes):
    pass

def containsModule(classes):
    pass

def findStringEncryption(classes):
    methodParams = {'Returns':'Ljava/lang/String;','Parameters':'Ljava/lang/String;'}
    methods = findFunctionsBySignature(classes,methodParams)
    for m in methods:
        findInvocationSites(classes,m)

def findInvocationSites(classes,method):
    invokedMethods = []
    invocationsSites = []
    for cl in classes:
        for meth in classes[cl]['Methods']:
            for invocations in meth['Invokes']:
                if method in invocations['Function']:
                    invokedMethods.append(invocations['Function'])
                    invocationsSites.append(meth["MethodName"])
    return invocationsSites , invokedMethods

def findMethodsWithDependencies(classes,dep):
    for cl in classes:
        for meth in classes[cl]['Methods']:
             for deps in meth['Dependencies']:
                if dep in deps:
                    print classes[cl]

def ModuleAnalysis(alldeps):
    adModules = []
    analyticModules = []
    for dep in alldeps:
        for m in adverts:
            if m in dep:
                adModules.append(m)
        for m in analytics:
            if m in dep:
                analyticModules.append(m)
    return adModules,analyticModules

def trackingModuleAnalysis(classes):
    pass

def containsDalvikSystemCalls(alldeps):
    for d in alldeps:
        if d.startswith("dalvik"):
            return True
    return False

def depListContainsCall(self):
    return False

def classLoaderAnalysis(classes):
    for cl in classes:
        if classes[cl]['Loader']:
            return True
    return False

def checksForNetworkConnections(classes):
    if findInvocationSites(classes,"getActiveNetworkInfo").__len__ > 0 or \
       findInvocationSites(classes,"isConnectedOrConnecting").__len__ > 0:
        return True
    return False

def UsesExternalStorage(classes):
    if findInvocationSites(classes,"getExternalStorageDirectory").__len__ > 0:
        return True
    return False

def checksForReflection(alldeps):
    for d in alldeps:
        if d.startswith("java/lang/reflect"):
            return True
    return False

def checksForJavaCryptoLib(alldeps):
    for d in alldeps:
        if d.startswith("javax/crypto"):
            return True
    return False

def queriesDevID(classes):
    if findInvocationSites(classes,"getDeviceId").__len__ > 0:
        return True
    return False

def canShutDownDevice(classes):
    if findInvocationSites(classes,"goToSleep").__len__ > 0:
        return True
    return False

def getConstStrings(classes):
    conststrings = []
    for cl in classes:
        for method in classes[cl]["Methods"]:
            for s in method["ConstStrings"]:
                    conststrings.append(s)
    return conststrings

def getUrls(classes):
    constStrings = getConstStrings(classes)
    urlStrings = []
    for s in constStrings:
        if is_valid_url(s):
            urlStrings.append(s)
    return s

def usesFlurry(alldeps):
    for d in alldeps:
        if "flurry" in d:
            return True
    return False


def analyzeParsedSmali(classes):
    # Begin Analysis
    results = {}
    alldeps,internaldeps,externaldeps,unknownDeps = getDependencies(classes)
    results["Unknown External Dependencies"] = unknownDeps
    results["Uses Class Loaders"] = classLoaderAnalysis(classes)
    results["Uses possible string decryption"] = "Unknown"#findStringEncryption(classes)
    results["Contains Dalvik System Calls"] = containsDalvikSystemCalls(alldeps)
    results["Checks for Network Connection"] = checksForNetworkConnections(classes)
    results["Library Apis Used"] = internaldeps
    results["Uses External Storage"] = UsesExternalStorage(classes)
    results["Uses Reflection"] = checksForReflection(internaldeps)
    results["Uses Java Crypto Library"] = checksForJavaCryptoLib(internaldeps)
    results["Queries Device ID"] = queriesDevID(classes)
    results["Uses Flurry"] = usesFlurry(alldeps)
    results["Const String URLs"] = getUrls(classes)
    #results["Constant Strings"] = getConstStrings(classes)
    log.saveLibrariesToPickle(alldeps)
    return results




