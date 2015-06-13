__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

'''
Example analysis
'''

name = "EmptyAnalysisRoutine"
description = "Does Nothing"
result = []
enabled = False

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    "add result of analysis to result dictionary"
    results["Permissions"]=result
    return results

def run(dependencies,classes):
    " run analysis routine "
    import json
    json_data=open('./Resources/permission.json')
    data = json.load(json_data)
    for c in classes:
        for m in classes[c]['Methods']:
            for api in m["Android API"]:
                for d in data["api"]:
                    if d["android_class"] in api and d["method"] in api:
                        result.append(d)






