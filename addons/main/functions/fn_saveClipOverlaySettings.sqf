/* ================================================================================ */

_displayClipOverlaySettings = findDisplay 43000;

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

	_imageTopLeftVisible = cbChecked _checkBoxImageTopLeft;
	_imageTopRightVisible = cbChecked _checkBoxImageTopRight;
	_imageBottomLeftVisible = cbChecked _checkBoxImageBottomLeft;
	_imageBottomRightVisible = cbChecked _checkBoxImageBottomRight;
	_textTopVisible = cbChecked _checkBoxTextTop;
	_textBottomVisible = cbChecked _checkBoxTextBottom;

_settings = 
[
	_imagePath,
	_headline,
	_subHeadline,
	_imageTopLeftVisible,
	_imageTopRightVisible,
	_imageBottomLeftVisible,
	_imageBottomRightVisible,
	_textTopVisible,
	_textBottomVisible
];

profileNamespace setVariable ["gradClipOverlaySettings", _settings];

/* ================================================================================ */