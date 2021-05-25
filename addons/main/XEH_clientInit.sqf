#include "\a3\editor_f\data\scripts\dikcodes.h"

// SHIFT, CTRL, ALT

/* ================================================================================ */

[
	"Gruppe Adler Clip Overlay",
	"gradClipOverlayDialogOpen",
	["Open Clip Overlay Dialog", "Open Clip Overlay Dialog"],
	{true;}, 
	{[] call GRAD_fnc_openClipOverlayDialog;}, 
	[DIK_F12, [true, false, true]]
] call CBA_fnc_addKeybind;

/* ================================================================================ */


[
	"Gruppe Adler Clip Overlay",
	"gradClipOverlayToggle",
	["Toggle Clip Overlay", "Toggle Clip Overlay"],
	{true;}, 
	{[] call GRAD_fnc_toggleClipOverlay;}, 
	[DIK_F12, [false, false, true]]
] call CBA_fnc_addKeybind;

/* ================================================================================ */
