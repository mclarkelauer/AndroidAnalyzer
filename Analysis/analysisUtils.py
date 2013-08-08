__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 6 / 13

__version__ = '0.1'
__status__ = 'Development'

import re
import log

def findFunctionsBySignature(classes,funcSig):
    methods=[]
    for cl in classes:
        for method in classes[cl]['Methods']:
            #print funcSig['Returns'] + " == " + method['Returns']
            if funcSig['Parameters'] in method['Parameters'] \
                and funcSig['Returns'] in method['Returns']:
                methods.append(method['MethodName'])
    return methods

def is_valid_url(url):
    regex = re.compile(
        r'^https?://'  # http:// or https://
        r'(?:(?:[A-Z0-9](?:[A-Z0-9-]{0,61}[A-Z0-9])?\.)+[A-Z]{2,6}\.?|'  # domain...
        r'localhost|'  # localhost...
        r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' # ...or ip
        r'(?::\d+)?'  # optional port
        r'(?:/?|[/?]\S+)$', re.IGNORECASE)
    return url is not None and regex.search(url)

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

def getConstStrings(classes):
    log.info("Analysis : Subroutine - get Const Strings")
    conststrings = []
    for cl in classes:
        for method in classes[cl]["Methods"]:
            for s in method["ConstStrings"]:
                    conststrings.append(s)
    return conststrings

def valid_ip(address):
    try:
        host_bytes = address.split('.')
        valid = [int(b) for b in host_bytes]
        valid = [b for b in valid if b >= 0 and b<=255]
        return len(host_bytes) == 4 and len(valid) == 4
    except:
        return False
