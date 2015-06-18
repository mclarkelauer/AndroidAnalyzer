__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 7 / 18 / 13

__version__ = '0.1'
__status__ = 'Development'

import fnmatch
import os
import subprocess


def find_files(directory, pattern):
    """
    Generic find files generator. recursively matches file names against
    the pattern provided

     @param directory : Root directory for search
     @oaram patten : pattern to match file name
    """
    for root, _, files in os.walk(directory):
        for basename in files:
            if fnmatch.fnmatch(basename, pattern):
                filename = os.path.join(root, basename)
                yield filename

def unique_strings_from_file(filename):
    strings_cmdline = ["strings", filename]
    sp = subprocess.Popen(strings_cmdline, stdout=subprocess.PIPE)
    strs = []
    for line in sp.stdout.readlines():
        if line.strip() not in strs:
            strs.append(line.strip())
    return strs


