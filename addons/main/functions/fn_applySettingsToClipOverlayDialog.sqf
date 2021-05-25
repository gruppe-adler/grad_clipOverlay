/* ================================================================================ */

params ["_settings"];

_imagePath = _settings select 0;
_headline = _settings select 1;
_subHeadline = _settings select 2;
_imageTopLeftVisible = _settings select 3;
_imageTopRightVisible = _settings select 4;
_imageBottomLeftVisible = _settings select 5;
_imageBottomRightVisible = _settings select 6;
_textTopVisible = _settings select 7;
_textBottomVisible = _settings select 8;

/* ================================================================================ */

_displayClipOverlaySettings = findDisplay 43000;

if (_displayClipOverlaySettings != displayNull) then 
{
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

	_editBoxImagePath ctrlSetText _imagePath;

	_editBoxHeadline ctrlSetText _headline;
	_editBoxSubHeadline ctrlSetText _subHeadline;

	_checkBoxImageTopLeft cbSetChecked _imageTopLeftVisible;
	_checkBoxImageTopRight cbSetChecked _imageTopRightVisible;
	_checkBoxImageBottomLeft cbSetChecked _imageBottomLeftVisible;
	_checkBoxImageBottomRight cbSetChecked _imageBottomRightVisible;

	_checkBoxTextTop cbSetChecked _textTopVisible;
	_checkBoxTextBottom cbSetChecked _textBottomVisible;
};

/* ================================================================================ */
