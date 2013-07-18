__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 7 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

apktoolPath = "Resources/"
apktool = "apktool"
apktoolCLI = apktoolPath + apktool + " d -f "

import os,log

def __CheckConfig():
    '''
    Check for the configuration
    '''
    if os.path.exists(apktoolPath + apktool):
        return
    print "ERROR: APKTool not configured properly or not installed"

def __ConfirmDisassembly():
    '''
    Confirm successful decompression of apk file
    '''
    # Check if the smali files have been created
    pass

def Disassemble(filepath):
    __CheckConfig()
    log.info("Starting APK Decompilation using APKTOOL")
    os.system("rm -rf temp;mkdir temp")
    os.system(apktoolCLI + " " + filepath + " temp")
    log.info("Decompiled resources written to Temp dir")
    #Perform Disassembly... throw exception on error case
    __ConfirmDisassembly()

def CleanUpTempDir():
    pass
