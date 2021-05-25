/* ================================================================================ */

_defaultSettings = [] call GRAD_fnc_defaultClipOverlaySettings;

_gradClipOverlaySettings = profileNamespace getVariable ["gradClipOverlaySettings", _defaultSettings];

[_gradClipOverlaySettings] call GRAD_fnc_applySettingsToClipOverlayDialog;

/* ================================================================================ */