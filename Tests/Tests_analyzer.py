__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 6 / 10 / 13

__version__ = '0.1'
__status__ = 'Development'

import sys
sys.path.append("../")

import pychecker.checker
import unittest
import os
import DexScope

class TestSequenceAnalyzer(unittest.TestCase):
    testDir = 'Test_Cases'

    def setUp(self):
        pass
    """
    def test_AllBinFiles(self):
        print "*********** VERY LARGE TEST ****************"
        for d in os.listdir(self.testDir + "/AllBinaries"):
            print "**************************"
            print " TEST CASE : " + self.testDir + "/AllBinaries/" + d
            DexScope.RunDexScope( self.testDir + "/AllBinaries/" + d + "/classes.dex")
            print "**************************"
    """

if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(TestSequenceAnalyzer)
    unittest.TextTestRunner(verbosity=2).run(suite)
