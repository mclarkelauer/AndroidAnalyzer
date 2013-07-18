__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 7 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

apktoolPath = "Resources/"
apktool = "apktool"
apktoolCLI = apktoolPath + apktool + " d -f "

import os
import log

#TODO: Add support for custom output directory

def __CheckConfig():
    '''
    Check for the configuration
    '''

    # TODO: Add support for custom apktool configs
    if os.path.exists(apktoolPath + apktool):
        return
    print "ERROR: APKTool not configured properly or not installed"

def __ConfirmDisassembly():
    '''
    Confirm successful decompression of apk file
    '''
    #TODO: Check if the smali files have been created
    return True

def Disassemble(filepath):
    __CheckConfig()
    log.info("Starting APK Decompilation using APKTOOL")
    os.system("rm -rf temp;mkdir temp")
    os.system(apktoolCLI + " " + filepath + " temp")
    log.info("Decompiled resources written to Temp dir")
    #Perform Disassembly... throw exception on error caser
    __ConfirmDisassembly()

def CleanUpTempDir():
    pass
