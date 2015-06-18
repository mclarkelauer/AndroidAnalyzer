__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'


import pdb

'''
Class Mapping

Generate class signature that can be used to identify it
'''

name = "ClassMapGenerator"
description = "Generate Class signature"
result = []
enabled = False
writeClassMapToFile = False

def getName():
  "return analysis name"
  return name

def getDescription():
  "return analysis description"
  return description

def getResults(results):
  "add result of analysis to result dictionary"
  results["Class Maps"] = result
  return results

def run(classes, dependencies, sharedobjs):
  import pprint
  pp = pprint.PrettyPrinter(indent=2)
  pp.pprint(classes[classes.keys()[2]])
