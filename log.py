__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 7 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

from datetime import datetime
import os,sys,profile,traceback
import pickle

logString = "[DexScope:"

logLevel = {
    0:{"Type":"INFO","On":True},
    1:{"Type":"DEBUG","On":True},
    2:{"Type":"WARNING","On":True},
    3:{"Type":"ERROR","On":True},
    4:{"Type":"CRITICAL","On":True},
}

def info(message):
    printLogMessage(message,level=0)

def debug(message):
    printLogMessage(message,level=1)

def warning(message):
    printLogMessage(message,level=2)

def error(message):
    printLogMessage(message,level=3)

def critical(message):
    printLogMessage(message,level=4)

def printLogMessage(message,level= 0):
    if logLevel[level]['On']:
        log  = logString + str(datetime.now()) + "] " + logLevel[level]["Type"] + ":" + message
        print log

def saveLibrariesToPickle(Deps):
    if os.path.isfile("libs.p"):
        libraries = pickle.load(open("libs.p","rb"))
    else:
        libraries = []
    for d in Deps:
        libraries.append(d)
    list(set(libraries))
    pickle.dump(libraries,open("libs.p","wb"))
