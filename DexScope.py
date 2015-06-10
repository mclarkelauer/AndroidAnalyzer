__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 6 / 30 / 13

__version__ = '0.1'
__status__ = 'Development'

import sys,os
import disassembly,parser,analyzer,log,apktool
import json
from datetime import datetime
import Analysis

def parseCommandLineArgs(args):
    config = {}
    error = False
    errorMessage = ''

    while len(args) > 0:
        head = args[0] # get head list element
        args = args[1:] # get tail list element
        if head == '-a': #apk case
            if "FileType" in config:
                error = True
                errorMessage = "Error: Conflicting file types, please provide only one type"
            config["FileType"] = "APK"
            config["Input"] = args[0]
            args = args[1:]
        elif head == "-d": #dex case
            if "FileType" in config:
                error = True
                errorMessage = "Error: Conflicting file types, please provide only one type"
            config["FileType"] = "DEX"
            config["Input"] = args[0]
            args = args[1:]
        elif head == "-r": #recrusive directory traversal
            if "FileType" in config:
                error = True
                errorMessage = "Error: Conflicting file types, please provide only one type"
            config["FileType"] = "DIR"
            config["Input"] = args[0]
            args = args[1:]
        elif head == "-o": # set output file
            config["OutputFile"] = args[0]
            args = args[1:]
        elif head == "-p": #print available analysis routines
            Analysis.printAvailableAnalysisRoutines()
            sys.exit(0)
        else:
            error = True
            errorMessage = "Error Unknown option used :" + head

    #check config for requirements, filename and type
    if not "FileType" in config:
        error = True
        errorMessage = "Error: Please provide filetype"

    if not "Input" in config or not os.path.isfile(config["Input"]):
        error = True
        errorMessage = "Error: File provided does not exist"
    if error:
            print errorMessage
            sys.exit(-1)
    return config


def RunDexScope(config):
    results = {}
    log.info("DexScope processing " + config["Input"])
    SmaliDir = ""
    if config["FileType"] == "APK":
        SmaliDir = "temp"
        results['File Format'] = "apk"
        apktool.Disassemble(config["Input"])
        #TODO : Perform manifest analysis if APK file
    elif config["FileType"] == "DEX":
        SmaliDir = "temp"
        results['File Format'] = "dex"
        disassembly.Disassemble(config["Input"])
    elif config["FileType"] == "DIR":
        SmaliDir = config["Input"]
        results['File Format'] = "Recursive Directory Search"
    else:
        print "Error: Invalid file type, this should not happen contact " + __author__  + ":" + __email__
    classes = parser.parseDir(SmaliDir)
    results['Time'] = str(datetime.now())

    results['File Name'] = config["Input"]
    results['Analysis'] = analyzer.analyzeParsedSmali(classes)
    apktool.CleanUpTempDir()

    if "OutputFile" in config:
        log.info("Writing Output to " + config["OutputFile"])
        logfile = open(config["OutputFile"],"w")
    else:
        logfile = open(config["Input"].split('/')[-1] + ".json","w")
    jsonlog = str(json.dumps(results,indent=1))
    logfile.write(jsonlog)
    logfile.close()



if __name__ == '__main__':
    config = parseCommandLineArgs(sys.argv[1:])
    RunDexScope(config)
