{
    "id": "fff9511d-6e21-48a7-a4ad-029a30b8d62c",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "window_command_hook",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2018-14-04 01:05:25",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "55e8ac1b-341e-425f-91bb-5893a9ac169c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 113497714299118,
            "filename": "window_command_hook.dll",
            "final": "window_command_cleanup",
            "functions": [
                {
                    "id": "c5dac88c-5b9b-4858-83b3-6322820b11bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "window_command_run_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_run_raw",
                    "returnType": 2
                },
                {
                    "id": "8adcf5f7-6fef-413b-be8e-83db8602de3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_command_cleanup",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_cleanup",
                    "returnType": 2
                },
                {
                    "id": "026ef286-ef13-4df7-b537-127c11dd108b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_command_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_init_raw",
                    "returnType": 2
                },
                {
                    "id": "2fed1dfa-62af-4324-ba3c-77a48045a82c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_command_bind_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_bind_raw",
                    "returnType": 2
                },
                {
                    "id": "a8babb67-89fd-4e96-82bd-47e8554e9b3d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_command_hook_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_hook_raw",
                    "returnType": 2
                },
                {
                    "id": "0b2241ae-fb71-4a8d-968e-edc7273b2e25",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_unhook_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_unhook_raw",
                    "returnType": 2
                },
                {
                    "id": "396f206d-d45c-4cf0-b3cc-f39df33152b8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_command_get_active_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_get_active_raw",
                    "returnType": 2
                },
                {
                    "id": "a0d7591b-e1f0-42de-9f72-9dd7757357a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "window_command_set_active_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_set_active_raw",
                    "returnType": 2
                },
                {
                    "id": "f0411a53-bd71-4a65-98e0-03193ff71997",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_check",
                    "help": "window_command_check(button) : Returns whether the given button was pressed since the last call to this function.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_check",
                    "returnType": 2
                },
                {
                    "id": "7f11ec72-f198-49a3-a4bd-260779cd7198",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_set_topmost_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_topmost_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\window_command_hook.dll",
            "uncompress": false
        },
        {
            "id": "441febdb-6887-4d82-8cf4-a14882e8d3c9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "e8240a74-ce99-4692-a738-2ed5e9893a16",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_close",
                    "hidden": false,
                    "value": "$F060"
                },
                {
                    "id": "a3e99a06-9562-4293-a3ee-da7de72950e7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_maximize",
                    "hidden": false,
                    "value": "$F030"
                },
                {
                    "id": "1dcbc93d-a4af-4249-afc9-94703b0fb4c8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_minimize",
                    "hidden": false,
                    "value": "$F020"
                },
                {
                    "id": "645b03a1-7bff-4ec5-b063-f6769ae20d9f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_restore",
                    "hidden": false,
                    "value": "$F120"
                },
                {
                    "id": "5ff95bd3-9cbf-43c6-922e-7d46f897c4a9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_resize",
                    "hidden": false,
                    "value": "$F000"
                },
                {
                    "id": "51036803-4453-4007-9479-e27866db95c3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_move",
                    "hidden": false,
                    "value": "$F010"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "window_command_hook.gml",
            "final": "",
            "functions": [
                {
                    "id": "3dc3a17a-38c3-45f1-a5d1-4d503c50c7ef",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_command_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_init",
                    "returnType": 2
                },
                {
                    "id": "0b1b6b76-bd7d-489c-bfd8-cb1615c8a575",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_hook",
                    "help": "window_command_hook(index) : Hooks the specified command ",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_hook",
                    "returnType": 2
                },
                {
                    "id": "97ee2db8-6cd1-4122-96ac-17c055e36b01",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_unhook",
                    "help": "window_command_unhook(index)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_unhook",
                    "returnType": 2
                },
                {
                    "id": "9978f897-cb7b-43fc-b6f1-39a5b1c6e38f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "window_command_run",
                    "help": "window_command_run(index, param = 0)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_run",
                    "returnType": 2
                },
                {
                    "id": "18a7567b-ec86-4933-b172-7a2bc049ab54",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_get_active",
                    "help": "window_command_get_active(command) : Returns whether the given command is currently available.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_get_active",
                    "returnType": 2
                },
                {
                    "id": "ec079325-70d4-45dd-8f0d-c9bd2775b2a9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "window_command_set_active",
                    "help": "window_command_set_active(command, status:bool) : Enables\/disables the command. Returns -1 if not possible.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_set_active",
                    "returnType": 2
                },
                {
                    "id": "57992729-ddb6-4803-9416-12bc5a336148",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_set_topmost",
                    "help": "window_set_topmost(stayontop:bool) : Allows to set a window to show on top of the rest like with GM8.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_topmost",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "version": "1.0.0"
}