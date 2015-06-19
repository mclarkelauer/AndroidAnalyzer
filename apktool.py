__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 7 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

apktoolPath = "Resources/"
apktool = "apktool.jar"


import os
import log
import subprocess
import shutil

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

def Disassemble(config, filepath):
    __CheckConfig()
    log.info("Starting APK Decompilation using APKTOOL")

    if os.path.exists(config['unpack_dir']):
        shutil.rmtree(config['unpack_dir'])

    os.mkdir(config['unpack_dir'])
    apktoolCLI = ["java", "-jar", apktoolPath + apktool, "d", '-o', config['unpack_dir'], '-f', filepath]

    sp = subprocess.call(apktoolCLI)
    if sp > 0:
        log.error("Error running: {0}\n".format(" ".join(apktoolCLI)))

    log.info("Decompiled resources written to Temp dir")
    #Perform Disassembly... throw exception on error caser
    __ConfirmDisassembly()

def CleanUpTempDir(config):
    shutil.rmtree(config['unpack_dir'])


