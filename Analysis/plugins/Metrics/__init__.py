__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

'''
Example analysis
'''

name = "Class Metrics"
description = "Collect number of class metrics"
result = {}
enabled = False

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    "add result of analysis to result dictionary"
    if enabled:
        results["Class Metrics"]=result
    return results

def run(dependencies,classes):
    import json
    json_data=open('./Resources/permission.json')
    data = json.load(json_data)
    for c in classes:
        result[c] = classes[c]["Metrics"]
        Methods = []
        for m in classes[c]['Methods']:
            Methods.append({"Name":m["MethodName"],"APIs":m["Android API"],"Permissions":[]})
            for api in Methods[-1]["APIs"]:
                for d in data["api"]:
                    if d["android_class"] in api and d["method"] in api:
                        Methods[-1]["Permissions"].append(d)
        result[c]["Methods"] = Methods



