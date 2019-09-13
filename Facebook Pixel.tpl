___INFO___

{
  "displayName": "Facebook Pixel",
  "description": "[UNOFFICIAL] Custom Template for inserting Facebook Pixel.",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "",
    "id": "brand_dummy"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "help": "You can find the Pixel ID e.g. in the &lt;noscript&gt;-Part of the Pixel-Code or on the Facebook Pixel Settings Page.\n&lt;noscript&gt;&lt;img height=\"1\" width=\"1\" src=\"https://www.facebook.com/tr?id=<strong>123456789</strong>&ev=PageView  &noscript=1\"/&gt;&lt;/noscript&gt;",
    "valueValidators": [
      {
        "args": [
          "^[0-9]+$"
        ],
        "enablingConditions": [],
        "errorMessage": "The Pixel-ID must not contain any letters or special characters! Please check that it only consists of numbers.",
        "type": "REGEX"
      },
      {
        "type": "NON_EMPTY"
      }
    ],
    "displayName": "Facebook Pixel ID",
    "simpleValueType": true,
    "name": "pixel_id",
    "type": "TEXT",
    "valueHint": "e.g. 123456789"
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "fb-disable"
              },
              {
                "type": 1,
                "string": "internal user"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://connect.facebook.net/en_US/fbevents.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_fbq"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq.queue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq.callMethod.apply"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq.queue.push"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
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
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

/*
*
* Code modified by github.com/thesteffi inspired by the great tutorials of Simo Ahava
* This script resembles the basic facebook pixel and adds opt-out handling.
*
*/

//required apis
const log = require('logToConsole');
const getCookie = require('getCookieValues');
const injectScript = require('injectScript');
const createQueue = require('createQueue');
const callInWindow = require('callInWindow');
const aliasInWindow = require('aliasInWindow');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');

//constants
const url = 'https://connect.facebook.net/en_US/fbevents.js';
const pixelId = data.pixel_id;
const disableCookie = 'fb-disable';

const getFbq = function(){
  	//return the existing global fbq method if available
	const fbq = copyFromWindow('fbq');
  	if(fbq){
    	return fbq;
    }
  	setInWindow('fbq',function(){
		const callMethod = copyFromWindow('fbq.callMethod.apply');
  		if(callMethod){
      		//if FB SDK is already loaded call Method directly
    		callInWindow('fbq.callMethod.apply',null,arguments);
    	}else{
      		//if Facebook SDK has not yet loaded push arguments to queue to be processed once it has
    		callInWindow('fbq.queue.push',arguments);
    	}
	});
	aliasInWindow('_fbq','fbq');

	createQueue('fbq.queue');
	return copyFromWindow('fbq');
};

//check that no opt-out cookie is set
log('Disable Cookie reads: '+getCookie(disableCookie)+' and internal user cookie reads:'+getCookie('internal user'));
if(getCookie(disableCookie) == 'true' || getCookie('internal user') == 'true'){
	log('User opted out of facebook pixel tracking');
}else{
  	const fbq = getFbq();
  	fbq('init',pixelId);
	fbq('track', 'PageView');
 	//inject script and respectively set success or failure status
	injectScript(url,data.gtmOnSuccess,data.gtmOnFailure);
  	log('Facebook Pixel '+pixelId+' successfully deployed');
}


___NOTES___

Created on 13.9.2019, 13:58:10
