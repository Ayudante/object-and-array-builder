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
  "categories": [
    "UTILITY"
  ],
  "displayName": "Object and Array Builder",
  "description": "Create a variable of type \"Object\" or \"Array\" using other variables.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "thisType",
    "displayName": "Type of this variable",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "object",
        "displayValue": "Object"
      },
      {
        "value": "arrayObject",
        "displayValue": "Array + Object"
      },
      {
        "value": "array",
        "displayValue": "Array"
      },
      {
        "value": "arrayArray",
        "displayValue": "Array + Array"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "object",
    "alwaysInSummary": true
  },
  {
    "type": "GROUP",
    "name": "object",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "LABEL",
        "name": "objectTitle",
        "displayName": "Output"
      },
      {
        "type": "LABEL",
        "name": "objectStart",
        "displayName": "{"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "objectData",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT",
            "valueHint": "e.g. name",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "e.g. {{variable name}}"
          }
        ],
        "alwaysInSummary": true,
        "newRowButtonText": ",",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "objectEnd",
        "displayName": "}"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "thisType",
        "paramValue": "object",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "arrayObject",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "convertTargetVariableAO",
        "displayName": "Input array",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "help": "Specify the \u003cb\u003eArray object\u003c/b\u003e type variable whose value you want to use for this variable.",
        "alwaysInSummary": true,
        "valueValidators": []
      },
      {
        "type": "CHECKBOX",
        "name": "limitArrayAO",
        "checkboxText": "Limit number of array object",
        "simpleValueType": true,
        "subParams": [
          {
            "type": "TEXT",
            "name": "limitNumberAO",
            "displayName": "",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "limitArrayAO",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              },
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "defaultValue": 3
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "arrayObjectStart",
        "displayName": "Output\u003cbr\u003e[{",
        "enablingConditions": []
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "arrayObjectData",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT",
            "valueHint": "e.g. name",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Object property from \"Input array\"",
            "name": "value",
            "type": "TEXT",
            "valueHint": "e.g. id"
          }
        ],
        "alwaysInSummary": true,
        "newRowButtonText": ",",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "arrayObjectEnd",
        "displayName": "}]",
        "enablingConditions": []
      }
    ],
    "enablingConditions": [
      {
        "paramName": "thisType",
        "paramValue": "arrayObject",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "array",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "extract",
        "checkboxText": "Extract from array object type variable",
        "simpleValueType": true,
        "subParams": [
          {
            "type": "SELECT",
            "name": "extractFrom",
            "displayName": "Input array",
            "macrosInSelect": true,
            "selectItems": [],
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "extract",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "CHECKBOX",
            "name": "limitExtract",
            "checkboxText": "Limit number of array object",
            "simpleValueType": true,
            "subParams": [
              {
                "type": "TEXT",
                "name": "limitNumberExtract",
                "displayName": "",
                "simpleValueType": true,
                "enablingConditions": [
                  {
                    "paramName": "limitExtract",
                    "paramValue": true,
                    "type": "EQUALS"
                  }
                ],
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  },
                  {
                    "type": "POSITIVE_NUMBER"
                  }
                ],
                "defaultValue": 3
              }
            ],
            "enablingConditions": [
              {
                "paramName": "extract",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          }
        ],
        "defaultValue": false
      },
      {
        "type": "LABEL",
        "name": "arrayStart",
        "displayName": "Output\u003cbr\u003e[",
        "enablingConditions": []
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "arrayData",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "e.g. {{variable name}}"
          }
        ],
        "alwaysInSummary": true,
        "enablingConditions": [
          {
            "paramName": "extract",
            "paramValue": false,
            "type": "EQUALS"
          }
        ],
        "newRowButtonText": ",",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "extractProperty",
        "displayName": "Object property from \"Input array\"",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "extract",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "valueHint": "e.g. id"
      },
      {
        "type": "LABEL",
        "name": "arrayEnd",
        "displayName": "]",
        "enablingConditions": []
      },
      {
        "type": "CHECKBOX",
        "name": "joinRoot",
        "checkboxText": "Arrays are expanded in \"Value\" and concatenate",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "extract",
            "paramValue": false,
            "type": "EQUALS"
          }
        ],
        "defaultValue": false,
        "displayName": "",
        "help": ""
      }
    ],
    "enablingConditions": [
      {
        "paramName": "thisType",
        "paramValue": "array",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "arrayArray",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "convertTargetVariableAA",
        "displayName": "Input array",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "help": "Specify the \u003cb\u003eArray object\u003c/b\u003e type variable whose value you want to use for this variable.",
        "alwaysInSummary": true,
        "valueValidators": []
      },
      {
        "type": "CHECKBOX",
        "name": "limitArrayAA",
        "checkboxText": "Limit number of array object",
        "simpleValueType": true,
        "subParams": [
          {
            "type": "TEXT",
            "name": "limitNumberAA",
            "displayName": "",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "limitArrayAA",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              },
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "defaultValue": 3
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "arrayArrayStart",
        "displayName": "Output\u003cbr\u003e[[",
        "enablingConditions": []
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "arrayArrayData",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Object property from \"Input array\"",
            "name": "value",
            "type": "TEXT",
            "valueHint": "e.g. id"
          }
        ],
        "alwaysInSummary": true,
        "newRowButtonText": ",",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "arrayArrayEnd",
        "displayName": "]]",
        "enablingConditions": []
      }
    ],
    "enablingConditions": [
      {
        "paramName": "thisType",
        "paramValue": "arrayArray",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "noneValueSetting4AX",
    "displayName": "Setting for property without value",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "none",
        "displayValue": "No touch"
      },
      {
        "value": "string",
        "displayValue": "Treat input string as value"
      },
      {
        "value": "ignore",
        "displayValue": "Ignore rows"
      },
      {
        "value": "convert",
        "displayValue": "Convert to..."
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "thisType",
        "paramValue": "arrayObject",
        "type": "EQUALS"
      },
      {
        "paramName": "thisType",
        "paramValue": "arrayArray",
        "type": "EQUALS"
      }
    ],
    "defaultValue": "none",
    "subParams": [
      {
        "type": "GROUP",
        "name": "forConvert4AX",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "convertString4AX",
            "displayName": "Change value",
            "simpleValueType": true,
            "canBeEmptyString": true,
            "help": "If the value is \u003cb\u003eundefined\u003c/b\u003e or \u003cb\u003enull\u003c/b\u003e, converts it to the set string.\u003cbr\u003e\nIf left blank, it will be converted to an empty string (\u0027\u0027)."
          }
        ],
        "enablingConditions": [
          {
            "paramName": "noneValueSetting4AX",
            "paramValue": "convert",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "forIgnore4AX",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "RADIO",
            "name": "defaultValue4AX",
            "displayName": "This variable default value",
            "radioItems": [
              {
                "value": "none",
                "displayValue": "length \u003d 0"
              },
              {
                "value": "undefine",
                "displayValue": "undefined"
              }
            ],
            "simpleValueType": true,
            "help": "Specifies the return value of this variable if all rows are ignored.",
            "defaultValue": "none"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "noneValueSetting4AX",
            "paramValue": "ignore",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "noneValueSetting4Single",
    "displayName": "Setting for \"Value\" without value",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "none",
        "displayValue": "No touch"
      },
      {
        "value": "ignore",
        "displayValue": "Ignore rows"
      },
      {
        "value": "convert",
        "displayValue": "Convert to..."
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "thisType",
        "paramValue": "object",
        "type": "EQUALS"
      },
      {
        "paramName": "thisType",
        "paramValue": "array",
        "type": "EQUALS"
      }
    ],
    "defaultValue": "none",
    "subParams": [
      {
        "type": "GROUP",
        "name": "forConvert4Single",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "convertString4Single",
            "displayName": "Change value",
            "simpleValueType": true,
            "canBeEmptyString": true,
            "help": "If the value is \u003cb\u003eundefined\u003c/b\u003e or \u003cb\u003enull\u003c/b\u003e, converts it to the set string.\u003cbr\u003e\nIf left blank, it will be converted to an empty string (\u0027\u0027)."
          }
        ],
        "enablingConditions": [
          {
            "paramName": "noneValueSetting4Single",
            "paramValue": "convert",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "forIgnore4Single",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "RADIO",
            "name": "defaultValue4Single",
            "displayName": "This variable default value",
            "radioItems": [
              {
                "value": "none",
                "displayValue": "length \u003d 0"
              },
              {
                "value": "undefine",
                "displayValue": "undefined"
              }
            ],
            "simpleValueType": true,
            "help": "Specifies the return value of this variable if all rows are ignored.",
            "defaultValue": "none"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "noneValueSetting4Single",
            "paramValue": "ignore",
            "type": "EQUALS"
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// -------- APIs
//const log = require('logToConsole');
//log('data =', data);
const makeTableMap = require('makeTableMap');	// https://developers.google.com/tag-manager/templates/api#maketablemap
	// makeTableMap(tableObj, keyColumnName, valueColumnName)
const makeString = require('makeString');	// https://developers.google.com/tag-manager/templates/api#makestring
	// makeString(value)
const getType = require('getType');	// https://developers.google.com/tag-manager/templates/api#gettype
	// getType(data.someField)


// -------- Getting Data
const inputData = data.objectData || data.arrayObjectData || data.arrayData || data.extractProperty || data.arrayArrayData || null;
const fromData = data.convertTargetVariableAO || data.extractFrom || data.convertTargetVariableAA || false;
if((fromData && (getType(fromData) !== 'object' && getType(fromData) !== 'array')) || (!fromData && data.thisType !== 'array' && data.thisType !== 'object')) return false;	// Error case
const thisType = (data.extract) ? 'extract' : data.thisType;
let option = {
	'nonValue': data.noneValueSetting4AX || data.noneValueSetting4Single || 'none',
	'convert': data.convertString4AX || data.convertString4Single || '',
	'defaultValue': data.defaultValue4AX || data.defaultValue4Single || 'none',
	'limitArray': data.limitNumberAO || data.limitNumberExtract || data.limitNumberAA || 0,
	'joinRoot': data.joinRoot || false
};
//log('inputData =', inputData);
//log('fromData =', fromData);
//log('thisType =', thisType);
//log('option =', option);


// -------- Output Formatting
let outputData;
if(inputData){
	switch(thisType){
		case 'object':			// ---- Object
			switch(option.nonValue){
				case 'none':
					inputData.filter(element => !element.value).map(function(element){
						element.value = makeString(element.value);
					});
//					log('inputData =', inputData);
					break;
				case 'ignore':
					inputData.filter(element => element.value == '').map(function(element){
						element.value = undefined;
					});
					if(inputData.filter(element => !element.value || element.value == '').length == inputData.length){
						switch(option.defaultValue){
							case 'none':
								return {};
							case 'undefine':
								return undefined;
						}
					}
					break;
				case 'convert':
					inputData.filter(element => !element.value).map(function(element){
						element.value = option.convert || '';
					});
//					log('inputData =', inputData);
					break;
			}
			outputData = makeTableMap(inputData, 'key', 'value');
			break;
		case 'arrayObject':	// ---- Array + Object
			if(inputData.length < 1){
				outputData = [];
				break;
			}
			switch(option.nonValue){
				case 'none':
					outputData = fromData.map(function(from){
						let pushObject = {};
						inputData.forEach(function(get){
							pushObject[get.key] = from[get.value] || makeString(from[get.value]);
						});
						return pushObject;
					});
					break;
				case 'string':
					outputData = fromData.map(function(from){
						let pushObject = {};
						inputData.forEach(function(get){
							pushObject[get.key] = from[get.value] || get.value;
						});
						return pushObject;
					});
					break;
				case 'convert':
					outputData = fromData.map(function(from){
						let pushObject = {};
						inputData.forEach(function(get){
							pushObject[get.key] = from[get.value] || option.convert;
						});
						return pushObject;
					});
					break;
				default:	// 'ignore'
					outputData = fromData.map(function(from){
						let pushObject = {};
						let pushFlag = 0;
						inputData.forEach(function(get){
							if(from[get.value]){
								pushObject[get.key] = from[get.value];
								pushFlag += 1;
							}
						});
						return (pushFlag > 0) ? pushObject : undefined ;
					}).filter(element => element);
					break;
			}
			break;
		case 'array':		// ---- Array
			outputData = [];
			const joinRootCheck = function(value){
				if(!option.joinRoot || getType(value) !== 'array'){
//					log('push');
					outputData.push(value);
				}else{
//					log('concat');
					outputData = outputData.concat(value);
				}
			};
			switch(option.nonValue){
				case 'ignore':
					inputData.filter(element => element.value).map(function(element){
						joinRootCheck(element.value);
					});
					break;
				case 'convert':
					inputData.map(function(element){
						joinRootCheck(element.value || option.convert || '');
					});
					break;
				default:	// none
					inputData.map(function(element){
						joinRootCheck(element.value);
					});
					break;
			}
			break;
		case 'extract':		// ---- Array(Extract)
			switch(option.nonValue){
				case 'ignore':
					outputData = fromData.filter(element => element[inputData]).map(function(element){
						return element[inputData];
					});
					break;
				case 'convert':
					outputData = fromData.map(function(element){
						return element[inputData] || option.convert || '';
					});
					break;
				default:	// none
					outputData = fromData.map(function(element){
						return element[inputData];
					});
					break;
			}
			break;
		case 'arrayArray':	// ---- Array + Array
			if(inputData.length < 1){
				outputData = [];
				break;
			}
			switch(option.nonValue){
				case 'string':
					outputData = fromData.map(function(from){
						return inputData.map(function(get){
							return from[get.value] || get.value;
						});
					});
					break;
				case 'ignore':
					outputData = fromData.map(function(from){
						return inputData.filter(get => from[get.value]).map(function(get){
							return from[get.value];
						});
					}).filter(element => element.length > 0);
					break;
				case 'convert':
					outputData = fromData.map(function(from){
						return inputData.map(function(get){
							return from[get.value] || option.convert || '';
						});
					});
					break;
				default:	// none
					outputData = fromData.map(function(from){
						return inputData.map(function(get){
							return from[get.value];
						});
					});
					break;
			}
			break;
	}
}
// ---- Options
//log('outputData1 = ',outputData);
// -- limitArray
if(option.limitArray) outputData.splice(option.limitArray);
//log('outputData2 = ',outputData);
// -- defaultValue
//log('getType = ',getType(outputData));
//log('length = ',outputData.length);
switch(getType(outputData)){
	case 'array':
		if(outputData.length <= 0){
			switch(option.defaultValue){
				case 'none':
					switch(thisType){
						case 'arrayObject':
							return [{}];
						case 'array':
						case 'extract':
							return [];
						case 'arrayArray':
							return [[]];
					}
					break;
				case 'undefine':
					return undefined;
			}
		}
		break;
}

// -------- Finish
return outputData;


___TESTS___

scenarios:
- name: Object - none
  code: "const mockData = {\n\tthisType: 'object',\n\tobjectData: [{\n\t\t'key': 'test1'\n\
    \t},{\n\t\t'key': 'test3',\n\t\t'value': 'ccc'\n\t}],\n\tnoneValueSetting4Single:\
    \ 'none'\n\t//noneValueSetting4Single: 'ignore'\n\t//, defaultValue4Single: 'undefine'\n\
    \t//noneValueSetting4Single: 'convert'\n\t//, convertString4Single: 'abc'\n};\n\
    \n// Call runCode to run the template's code.\nlet variableResult = runCode(mockData);\n\
    \n// Verify that the variable returns a result.\nassertThat(variableResult).isNotEqualTo(undefined);"
- name: Array + Object
  code: "const mockData = {\n\tthisType: 'arrayObject',\n\tconvertTargetVariableAO:\
    \ fromDataA,\n\tarrayObjectData: [{\n\t\t'key': 'test1',\n\t\t'value': 'aaa'\n\
    \t},{\n\t\t'key': 'test3',\n\t\t'value': 'ccc'\n\t}],\n\t//arrayObjectData: [{}],\n\
    \t//noneValueSetting4AX: 'none'\n\tnoneValueSetting4AX: 'ignore'\n\t//, defaultValue4AX:\
    \ 'none'\n\t//, defaultValue4AX: 'undefine'\n\t//noneValueSetting4AX: 'string'\n\
    \t//noneValueSetting4AX: 'convert'\n\t//, convertString4AX: 'abc'\n\t//, convertString4AX:\
    \ ''\n\t//, limitArrayAO:true,\n\t//limitNumberAO: 2\n};\n\n// Call runCode to\
    \ run the template's code.\nlet variableResult = runCode(mockData);\n\n// Verify\
    \ that the variable returns a result.\nassertThat(variableResult).isNotEqualTo(undefined);"
- name: Array
  code: "const mockData = {\n\tthisType: 'array',\n\tarrayData: [{\n\t\t'value': 'aaa'\n\
    \t},{\n\t\t//'value': false\n\t\t'value': fromDataA\n\t},{\n\t},{\n\t\t'value':\
    \ 'ccc'\n\t}],\n\tjoinRoot: false,\n\t//joinRoot: true,\n\tnoneValueSetting4Single:\
    \ 'none'\n\t//noneValueSetting4Single: 'ignore'\n\t//noneValueSetting4Single:\
    \ 'convert'\n\t//, convertString4Single: 'abc'\n};\n\n// Call runCode to run the\
    \ template's code.\nlet variableResult = runCode(mockData);\n\n// Verify that\
    \ the variable returns a result.\nassertThat(variableResult).isNotEqualTo(undefined);"
- name: Array - Extract
  code: "const mockData = {\n\tthisType: 'array',\n\textract: true,\n\textractFrom:\
    \ fromDataA,\n\textractProperty: 'aaa',\n\t//noneValueSetting4Single: 'none'\n\
    \tnoneValueSetting4Single: 'ignore'\n\t//,defaultValue4Single: 'undefine'\n\t\
    //noneValueSetting4Single: 'convert'\n\t//, convertString4Single: 'abc'\n};\n\n\
    // Call runCode to run the template's code.\nlet variableResult = runCode(mockData);\n\
    \n// Verify that the variable returns a result.\nassertThat(variableResult).isNotEqualTo(undefined);"
- name: Array + Array
  code: "const mockData = {\n\tthisType: 'arrayArray',\n\tconvertTargetVariableAA:\
    \ fromDataA,\n\tarrayArrayData: [{\n    \t'value': ''\n    },{\n    \t'value':\
    \ 'ddd'\n    }],\n\t//arrayArrayData: [{}],\n\t//noneValueSetting4AX: 'none'\n\
    \t//noneValueSetting4AX: 'string'\n\tnoneValueSetting4AX: 'ignore'\n\t//, defaultValue4AX:\
    \ 'undefine'\n\t//noneValueSetting4AX: 'convert'\n\t//, convertString4AX: 'abc'\n\
    \t//, limitArrayAA:true,\n\t//limitNumberAA: 2\n};\n\n// Call runCode to run the\
    \ template's code.\nlet variableResult = runCode(mockData);\n\n// Verify that\
    \ the variable returns a result.\nassertThat(variableResult).isNotEqualTo(undefined);"
- name: Untitled test 6
  code: "const mockData = {\n\tthisType: 'arrayObject',\n\tarrayObjectData: [{\n\t\
    \t'key': 'test1',\n\t\t'value': 'aaa'\n\t},{\n\t\t'key': 'test3',\n\t\t'value':\
    \ 'ccc'\n\t}],\n\t//arrayObjectData: [{}],\n\t//noneValueSetting4AX: 'none'\n\t\
    noneValueSetting4AX: 'ignore'\n\t//, defaultValue4AX: 'none'\n\t//, defaultValue4AX:\
    \ 'undefine'\n\t//noneValueSetting4AX: 'string'\n\t//noneValueSetting4AX: 'convert'\n\
    \t//, convertString4AX: 'abc'\n\t//, convertString4AX: ''\n\t//, limitArrayAO:true,\n\
    \t//limitNumberAO: 2\n};\n\n// Call runCode to run the template's code.\nlet variableResult\
    \ = runCode(mockData);\n\n// Verify that the variable returns a result.\nassertThat(variableResult).isNotEqualTo(undefined);"
setup: "const fromDataA = [{\n\t\t'aaa': '1のデータa',\n\t\t'bbb': '1のデータb'\n\t},{\n\t\
  \t'aaa': '2のデータa',\n\t\t'bbb': '2のデータb',\n\t\t'ccc': '2のデータc'\n\t},{\n\t\t'aaa':\
  \ '3のデータa',\n\t\t'bbb': '3のデータb'\n\t},{\n\t\t'aaa': '4のデータa',\n\t\t'bbb': '4のデータ\
  b',\n\t\t'ccc': '4のデータc'\n\t}];"


___NOTES___

-------- Shortcut --------
^(.*log( |\().*)$
↓
//$1

^//(.*log( |\().*)$
↓
$1


-------- Setting Data Sample --------
thisType	pulldown
	object|arrayObject|array|arrayArray

[object]
objectData	table
	key:value

[array+object]
convertTargetVariableAO	pulldown
limitArrayAO	true|false
	limitNumberAO	number
arrayObjectData	table
	key:value

[array]
extract	true|false
	extractFrom	pulldown
	limitExtract	true|false
		limitNumberExtract	number
arrayData	table
	value
extractProperty	input
joinRoot	true|false

[array+array]
convertTargetVariableAA	pulldown
limitArrayAA	true|false
	limitNumberAA	number
arrayArrayData	table
	value

[noneValueSetting4AX]
noneValueSetting4AX	none|string|ignore|convert
convertString4AX	input
defaultValue4AX	none|undefine

[noneValueSetting4Single]
noneValueSetting4Single	none|ignore|convert
convertString4Single	input
defaultValue4Single	none|undefine


