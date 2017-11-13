{
    "id": "bc02df74-b120-4e9e-a46c-95b216a29a12",
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
    "date": "2017-41-08 11:11:11",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "30ee8227-c327-484a-8b3b-a6cbbbbebb1a",
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
                    "id": "06783b42-3d6a-4401-825c-3e50b2e9b89d",
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
                    "id": "08d8ad8e-e144-419e-96d4-d31af129077e",
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
                    "id": "d6a4419a-8fed-46d2-a6c7-aff468d87566",
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
                    "id": "514f2e4e-12e0-4087-9c29-c4a98e8e6564",
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
                    "id": "14ccd9fa-2372-45b5-83eb-3a184d4da7b0",
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
                    "id": "9874fbf6-739c-43d9-9979-9300c88fdd6d",
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
                    "id": "4085b5cf-2895-4347-9428-e8bc7ab05084",
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
                    "id": "2590dd80-328b-4a85-91e1-0bad35b39a58",
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
                    "id": "1246d04d-362b-44e1-bf5b-179ca46a9341",
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
            "id": "61c7978a-8d0e-40d8-8f80-66cef0c30281",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "a409d144-7967-445a-9f84-8e3567da1578",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_close",
                    "hidden": false,
                    "value": "$F060"
                },
                {
                    "id": "d091dcba-be73-488c-b290-d97477b08150",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_maximize",
                    "hidden": false,
                    "value": "$F030"
                },
                {
                    "id": "0a663621-03cb-42c5-a11c-a3340feb7cfd",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_minimize",
                    "hidden": false,
                    "value": "$F020"
                },
                {
                    "id": "07876453-3707-49a5-a9e9-830b5a3e6980",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_restore",
                    "hidden": false,
                    "value": "$F120"
                },
                {
                    "id": "7a1d2d9c-7805-405e-84ff-e39e8aa38d6c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_winmenu",
                    "hidden": false,
                    "value": "$F090"
                },
                {
                    "id": "90916686-e04a-49c6-8c52-5272f65e55b5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_resize",
                    "hidden": false,
                    "value": "$F000"
                },
                {
                    "id": "ca7129a8-7a37-45cd-97ac-e5a28f0feebb",
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
                    "id": "9fa90ccc-15b6-4cec-9d12-8177fb819d05",
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
                    "id": "9a94fd43-831a-475b-ac92-3914d4f2ae2d",
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
                    "id": "337d3d00-9950-4709-9462-fd1ab6b1d462",
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
                    "id": "a8fe3e75-5c4e-4faf-a612-17aa264743b9",
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
                    "id": "ec8b022e-92bf-4b4e-8e37-faee2004fe15",
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
                    "id": "f2be0e55-89f5-4e61-9b29-be6de3966251",
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