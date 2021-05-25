

/* ================================================================================ */

_displayClipOverlay = uiNamespace getVariable ["ClipOverlay", displayNull];

_displayClipOverlaySettings = findDisplay 43000;

/* ================================================================================ */

_imageTopLeft = _displayClipOverlay displayCtrl 2001;
_imageTopRight = _displayClipOverlay displayCtrl 2002;
_imageBottomLeft = _displayClipOverlay displayCtrl 2003;
_imageBottomRight = _displayClipOverlay displayCtrl 2004;

_backgroundTop = _displayClipOverlay displayCtrl 2101;
_backgroundBottom = _displayClipOverlay displayCtrl 2102;

_editBoxHeadlineTop = _displayClipOverlay displayCtrl 2201;
_editBoxHeadlineBottom = _displayClipOverlay displayCtrl 2202;

_editBoxSubHeadlineTop = _displayClipOverlay displayCtrl 2301;
_editBoxSubHeadlineBottom = _displayClipOverlay displayCtrl 2302;

/* ================================================================================ */

_editBoxImagePath = _displayClipOverlaySettings displayCtrl 4203;
_editBoxHeadline = _displayClipOverlaySettings displayCtrl 4201;
_editBoxSubHeadline = _displayClipOverlaySettings displayCtrl 4202;

_checkBoxImageTopLeft = _displayClipOverlaySettings displayCtrl 4401;
_checkBoxImageTopRight = _displayClipOverlaySettings displayCtrl 4402;
_checkBoxImageBottomLeft = _displayClipOverlaySettings displayCtrl 4403;
_checkBoxImageBottomRight = _displayClipOverlaySettings displayCtrl 4404;

_checkBoxTextTop = _displayClipOverlaySettings displayCtrl 4405;
_checkBoxTextBottom = _displayClipOverlaySettings displayCtrl 4406;

/* ================================================================================ */

_imagePath = ctrlText _editBoxImagePath;
_headline = ctrlText _editBoxHeadline;
_subHeadline = ctrlText _editBoxSubHeadline;

/* ================================================================================ */

if (cbChecked _checkBoxImageTopLeft) then { _imageTopLeft ctrlShow true; } else { _imageTopLeft ctrlShow false; };
if (cbChecked _checkBoxImageTopRight) then { _imageTopRight ctrlShow true; } else { _imageTopRight ctrlShow false; };
if (cbChecked _checkBoxImageBottomLeft) then { _imageBottomLeft ctrlShow true; } else { _imageBottomLeft ctrlShow false; };
if (cbChecked _checkBoxImageBottomRight) then { _imageBottomRight ctrlShow true; } else { _imageBottomRight ctrlShow false; };

if (cbChecked _checkBoxTextTop) then
{
	_backgroundTop ctrlShow true;
	_editBoxHeadlineTop ctrlShow true;
	_editBoxSubHeadlineTop ctrlShow true;
}
else
{
	_backgroundTop ctrlShow false;
	_editBoxHeadlineTop ctrlShow false;
	_editBoxSubHeadlineTop ctrlShow false;
};

if (cbChecked _checkBoxTextBottom) then
{
	_backgroundBottom ctrlShow true;
	_editBoxHeadlineBottom ctrlShow true;
	_editBoxSubHeadlineBottom ctrlShow true;
}
else
{
	_backgroundBottom ctrlShow false;
	_editBoxHeadlineBottom ctrlShow false;
	_editBoxSubHeadlineBottom ctrlShow false;
};

/* ================================================================================ */

_imageTopLeft ctrlSetText _imagePath;
_imageTopRight ctrlSetText _imagePath;
_imageBottomLeft ctrlSetText _imagePath;
_imageBottomRight ctrlSetText _imagePath;

_editBoxHeadlineTop ctrlSetText _headline;
_editBoxHeadlineBottom ctrlSetText _headline;

_editBoxSubHeadlineTop ctrlSetText _subHeadline;
_editBoxSubHeadlineBottom ctrlSetText _subHeadline;

/* ================================================================================ */
