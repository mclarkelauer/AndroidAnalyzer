__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import imp
import os
import json
import sys
import pdb


AnalysisFolder = "./Analysis/plugins"
RoutineName = "__init__"


plugins_conf = json.loads(open('plugins.json').read())


# 
# This can be configured via plugins.conf
#
def getPlugins():
    plugins = []
    possibleplugins = os.listdir(AnalysisFolder)

    for plugin_name in possibleplugins:
        location = os.path.join(AnalysisFolder, plugin_name)
        if not os.path.isdir(location) or not RoutineName + ".py" in os.listdir(location):
            continue
        info = imp.find_module(plugin_name, [AnalysisFolder])

        # By default we enable all we find in the plugins folder,
        # if configuration is missing we default to enable it.

        do_append = False
        if plugin_name not in plugins_conf.keys() or 'enabled' not in plugins_conf[plugin_name].keys():
            do_append = True

        elif plugin_name in plugins_conf.keys() and 'enabled' in plugins_conf[plugin_name].keys() \
           and plugins_conf[plugin_name]['enabled'] == True:
            do_append = True

        if do_append:
            plugins.append({"name": plugin_name, "info": info})
        else:
            print("{0} : Disabled".format(plugin_name))

    return plugins



def loadPlugin(plugin):
    return imp.load_module(RoutineName, *plugin["info"])

def runAnalysis(classes,dependencies, sharedobjs):
    results = {}

    for i in getPlugins():
        print("Loading routine " + i["name"])
        plugin = loadPlugin(i)
        print(i["name"] + " : Running")
        plugin.run(dependencies,classes,sharedobjs)
        results = plugin.getResults(results)
    return results


def printAvailableAnalysisRoutines():
    print "Available Analysis Routines"
    for i in getPlugins():
        plugin = loadPlugin(i)
        print plugin.getName() + " : " + plugin.getDescription()

