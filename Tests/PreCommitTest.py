__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 7 / 18 / 13

__version__ = '0.1'
__status__ = 'Development'

from pylint import epylint as lint
import util
import sys

def pep8Checker():
    return True

def pylintChecker():
    filelist = util.find_files("../","*.py")
    for f in filelist:
        (pylint_stdout,pylint_stderr) = lint.py_run("../analyzer.py",True)
        print pylint_stdout.readlines()
        print pylint_stderr.readlines()
    return True

if __name__ == "__main__":
    print("Running PEP8 syntax and style checker")
    if(not pep8Checker()):
        print("ERROR : PEP8 Check failed")
        sys.exit(-1)
    else:
        print("PEP8")
    print("Running Lint")
    if( not pylintChecker()):
        print("ERROR : PyLint Check failed")
        sys.exit(-1)
    # Run unittests here

    print()