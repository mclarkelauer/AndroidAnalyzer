__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 6 / 10 / 13

__version__ = '0.1'
__status__ = 'Development'

import sys,os

'''
Contains logic for decompressing apk files and parsing them
'''
baksmaliPath = 'Resources/'


baksmali = "baksmali-1.4.2-dev.jar"
smali = "smali-1.4.2-dev.jar"

baksmaliCLI = 'java -jar ' + baksmaliPath + baksmali

def __CheckConfig():
    '''
    Check for the configuration
    '''
    if os.path.exists(baksmaliPath + baksmali):
        return
    print "ERROR: Baksmali not configured properly or not installed"

def __ConfirmDisassembly():
    '''
    Confirm successful decompression of apk file
    '''
    # Check if the smali files have been created
    pass

def Disassemble(dexFile):
    __CheckConfig()
    os.system("rm -rf temp;mkdir temp")
    os.system(baksmaliCLI + " " + dexFile + " -o temp")
    #Perform Disassembly... throw exception on error case
    __ConfirmDisassembly()

def CleanUpTempDir():
    os.system("rm -rf temp")
