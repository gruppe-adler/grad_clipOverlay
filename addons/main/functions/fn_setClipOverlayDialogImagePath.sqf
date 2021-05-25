/* ================================================================================ */

params ["_imagePath"];

/* ================================================================================ */

_displayClipOverlaySettings = findDisplay 43000;

if (_displayClipOverlaySettings != displayNull) then 
{
	_editBoxImagePath = _displayClipOverlaySettings displayCtrl 4203;

	_editBoxImagePath ctrlSetText _imagePath;
};

/* ================================================================================ */
