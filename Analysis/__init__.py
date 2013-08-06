__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import imp
import os


AnalysisFolder = "./Analysis/plugins"
RoutineName = "__init__"

def getPlugins():
    plugins = []
    possibleplugins = os.listdir(AnalysisFolder)
    for i in possibleplugins:
        location = os.path.join(AnalysisFolder, i)
        if not os.path.isdir(location) or not RoutineName + ".py" in os.listdir(location):
            continue
        info = imp.find_module(i, [AnalysisFolder])
        plugins.append({"name": i, "info": info})
    return plugins

def loadPlugin(plugin):
    return imp.load_module(RoutineName, *plugin["info"])

def runAnalysis():
    results = {}
    for i in getPlugins():
        print("Loading routine " + i["name"])
        plugin = loadPlugin(i)
        plugin.run()
        results = plugin.getResults(results)
    return results


def printAvailableAnalysisRoutines():
    print "Available Analysis Routines"
    for i in getPlugins():
        plugin = loadPlugin(i)
        print plugin.getName() + " : " + plugin.getDescription()

