#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {};
        author = "y0014984";
        VERSION_CONFIG;
    };
};

#include "CfgFunctions.hpp"
#include "defines.hpp"
#include "dialogs.hpp"

class Extended_PostInit_EventHandlers
{
	class grad_clipOverlay_PostInits
	{
        clientInit = call compile preprocessFileLineNumbers "z\grad_clipOverlay\addons\main\XEH_clientInit.sqf";
	};
};