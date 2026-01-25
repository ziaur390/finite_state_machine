{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "IntruderSystem Export"
          },
          "specification": {
            "text": "interface:\r\n    in event motion\r\n    in event button\r\n    var modeII : boolean = false\r\n    \r\n    operation sirenOn()\r\n    operation sirenOff()\r\n    operation lampOn()\r\n    operation lampOff()"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 18,
          "y": -82
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "6b8ccb19-480d-4524-83d6-bb6a4d2f8eba",
        "z": 3,
        "embeds": [
          "fed48f50-2946-4b05-949d-2d47f6f47256"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 18,
          "y": -67
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "fed48f50-2946-4b05-949d-2d47f6f47256",
        "z": 4,
        "parent": "6b8ccb19-480d-4524-83d6-bb6a4d2f8eba"
      },
      {
        "position": {
          "x": 297,
          "y": -78
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "bdc600a7-d287-4682-9193-249b0fcc7549",
        "z": 9
      },
      {
        "position": {
          "x": 215,
          "y": -9
        },
        "size": {
          "height": 133,
          "width": 180
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ModeI_Alert",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / sirenOn()"
          }
        },
        "id": "a1f71468-3443-4332-a7c1-aebadd40b286",
        "z": 13,
        "embeds": [
          "7721df9d-bb8c-446f-8825-6d37f22ee659"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "bdc600a7-d287-4682-9193-249b0fcc7549"
        },
        "target": {
          "id": "a1f71468-3443-4332-a7c1-aebadd40b286",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "51.21%",
              "dy": "12.101%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "default"
              }
            },
            "position": {
              "distance": 0.6892561512064592,
              "offset": -24.10980908136317,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1143cc97-e2f6-4a70-adae-c9a9c6c5362b",
        "z": 15,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 359,
          "y": -277
        },
        "size": {
          "height": 116,
          "width": 155
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ModeII_Alert",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / sirenOn(); lampOn()"
          }
        },
        "id": "537e7e12-eaf5-4163-857f-196d282401cf",
        "z": 19
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "bdc600a7-d287-4682-9193-249b0fcc7549"
        },
        "target": {
          "id": "537e7e12-eaf5-4163-857f-196d282401cf",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "21.982%",
              "dy": "93.694%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[modeII]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "13b61f6e-6332-445f-9d4d-ca22397accfb",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a1f71468-3443-4332-a7c1-aebadd40b286"
        },
        "target": {
          "id": "a1f71468-3443-4332-a7c1-aebadd40b286",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "97.222%",
              "dy": "51.88%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "motion"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7721df9d-bb8c-446f-8825-6d37f22ee659",
        "z": 21,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "a1f71468-3443-4332-a7c1-aebadd40b286"
      },
      {
        "position": {
          "x": 111,
          "y": -193
        },
        "size": {
          "height": 139,
          "width": 124
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "Armed",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / \r\nsirenOff();\r\nlampOff()"
          }
        },
        "id": "2efa5ff4-9350-4219-a205-623803fdc775",
        "z": 22,
        "embeds": [
          "346d2781-69c7-4351-85c3-268ebba450d0"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "537e7e12-eaf5-4163-857f-196d282401cf"
        },
        "target": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "49.078%",
              "dy": "10.075%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 30s"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "767d9ae5-78e2-44d1-b6f2-940f87cf2f16",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a1f71468-3443-4332-a7c1-aebadd40b286"
        },
        "target": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "49.078%",
              "dy": "99.334%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 30s"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "593d1b42-8956-40c2-ba5c-c1ec989841c6",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6b8ccb19-480d-4524-83d6-bb6a4d2f8eba"
        },
        "target": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "19.81%",
              "dy": "64.888%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4f17c66b-119b-4432-af62-a9b168405d64",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775"
        },
        "target": {
          "id": "bdc600a7-d287-4682-9193-249b0fcc7549"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "motion"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "499ea1c9-d8e5-4008-b40b-4fb5bf80e641",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775"
        },
        "target": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "22.857%",
              "dy": "26.966%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "button / modeII = !modeII"
              }
            },
            "position": {
              "distance": 0.3966153556760176,
              "offset": 9.994644165039062,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "346d2781-69c7-4351-85c3-268ebba450d0",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 13,
            "y": -324
          }
        ],
        "parent": "2efa5ff4-9350-4219-a205-623803fdc775"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "537e7e12-eaf5-4163-857f-196d282401cf"
        },
        "target": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "72.581%",
              "dy": "35.252%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "button / modeII = !modeII"
              }
            },
            "position": {
              "distance": 0.500053751524916,
              "offset": 13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "13c97f4a-bfbe-44ee-897b-867d2c5df971",
        "z": 24,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 277,
            "y": -219
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a1f71468-3443-4332-a7c1-aebadd40b286"
        },
        "target": {
          "id": "2efa5ff4-9350-4219-a205-623803fdc775",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "16.935%",
              "dy": "54.676%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "button / modeII = !modeII"
              }
            },
            "position": {
              "distance": 0.4389199140263729,
              "offset": -30.140595334317894,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d2e1465d-3df0-4e2c-b1e4-5672cc576822",
        "z": 25,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "IntruderSystem",
          "statemachinePrefix": "intruderSystem",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}