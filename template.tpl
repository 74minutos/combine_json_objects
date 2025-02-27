___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Combine Objects",
  "description": "A template to combine different objects into one",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SIMPLE_TABLE",
    "name": "objects",
    "displayName": "Objects to be transformed",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Name",
        "name": "object",
        "type": "TEXT"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

// Import the necessary modules from GTM Server Side
var logToConsole = require('logToConsole');

// Function to combine multiple objects into one
function combineObjects(objects) {
    var combinedObject = {};

    objects.forEach(function (obj) {
        if (typeof obj === 'object') {
            for (var key in obj) {
                if (obj.hasOwnProperty(key)) {
                    combinedObject[key] = obj[key];
                }
            }
        }
    });

    return combinedObject;
}

function main() {
    // Get the objects from data.objects
    var objectsToCombine = data.objects.map(function(data) {
        return data.object;
    }).filter(function(obj) { return obj; });

    // Combine the objects
    var combinedObject = combineObjects(objectsToCombine);
    logToConsole('Combined Object:', combinedObject);

    // Return the combined object
    return combinedObject;
}

// Execute the main function
main();


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 27/2/2025, 13:01:59


