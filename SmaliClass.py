__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 6 / 13 / 13

__version__ = '0.1'
__status__ = 'Development'

class SmaliClass(object):
    def __init__(self,name=""):
        self.Name = name
        self.Access = ''
        self.SourceFile = ''
        self.Methods = []
        self.Fields = []
        self.Super = ''
        self.Implements = ''
        self.Annotations = ''
