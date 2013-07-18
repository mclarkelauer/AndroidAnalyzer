__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 6 / 30 / 13

__version__ = '0.1'
__status__ = 'Development'

import sys
import disassembly,parser,analyzer,log,apktool
import json
from datetime import datetime

def RunDexScope(dexFileName):

    #TODO : Add support for APK and DEX identification and call the right disassembler
    #TODO : add support for custom directory and output files
    results = {}
    log.info("DexScope processing " + dexFileName)
    disassembly.Disassemble(dexFileName)
    classes = parser.parseDir("temp")
    results['Time'] = str(datetime.now())
    results['File Format'] = "apk"
    results['File Name'] = dexFileName.split('/')[-1]
    results['Analysis'] = analyzer.analyzeParsedSmali(classes)
    apktool.CleanUpTempDir()
    #write results to file

    logfile = open(dexFileName.split('/')[-1] + ".json","w")
    jsonlog = str(json.dumps(results,indent=1))
    logfile.write(jsonlog)
    logfile.close()


if __name__ == '__main__':
    #TODO : Sanitize inputs
    dexName = sys.argv[1]
    RunDexScope(dexName)