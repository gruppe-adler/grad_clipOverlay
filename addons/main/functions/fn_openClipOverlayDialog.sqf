/* ================================================================================ */

_ok = createDialog "ClipOverlayConfig";

[] call GRAD_fnc_loadClipOverlaySettings;

/* ================================================================================ */

 private _toggle = uiNamespace getVariable ["gradClipOverlayActive", false];


if (_toggle == false) then
{
	[] call GRAD_FNC_toggleClipOverlay;
};

/* ================================================================================ */