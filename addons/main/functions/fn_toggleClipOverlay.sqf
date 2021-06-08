private _toggle = uiNamespace getVariable ["gradClipOverlayActive", false];


if (_toggle == false) then
{
	("GRAD_clipOverlay" call BIS_fnc_rscLayer) cutRsc ["ClipOverlay", "PLAIN", -1, true];
	uiNamespace setVariable ["gradClipOverlayActive", true];
	
	/* ================================================================================ */

	_defaultSettings = [] call GRAD_fnc_defaultClipOverlaySettings;

	_gradClipOverlaySettings = profileNamespace getVariable ["gradClipOverlaySettings", _defaultSettings];

	_imagePath = _gradClipOverlaySettings select 0;
	_headline = _gradClipOverlaySettings select 1;
	_subHeadline = _gradClipOverlaySettings select 2;

	_imageTopLeftVisible = _gradClipOverlaySettings select 3;
	_imageTopRightVisible = _gradClipOverlaySettings select 4;
	_imageBottomLeftVisible = _gradClipOverlaySettings select 5;
	_imageBottomRightVisible = _gradClipOverlaySettings select 6;
	_textTopVisible = _gradClipOverlaySettings select 7;
	_textBottomVisible = _gradClipOverlaySettings select 8;

	/* ================================================================================ */

	_displayClipOverlay = uiNamespace getVariable ["ClipOverlay", displayNull];

	/* ================================================================================ */

	_imageTopLeft = _displayClipOverlay displayCtrl 2001;
	_imageTopRight = _displayClipOverlay displayCtrl 2002;
	_imageBottomLeft = _displayClipOverlay displayCtrl 2003;
	_imageBottomRight = _displayClipOverlay displayCtrl 2004;

	_backgroundTop = _displayClipOverlay displayCtrl 2101;
	_backgroundBottom = _displayClipOverlay displayCtrl 2102;
	
	_backgroundHeadlineTop = _displayClipOverlay displayCtrl 2103;
	_backgroundHeadlineBottom = _displayClipOverlay displayCtrl 2104;

	_editBoxHeadlineTop = _displayClipOverlay displayCtrl 2201;
	_editBoxHeadlineBottom = _displayClipOverlay displayCtrl 2202;

	_editBoxSubHeadlineTop = _displayClipOverlay displayCtrl 2301;
	_editBoxSubHeadlineBottom = _displayClipOverlay displayCtrl 2302;


	/* ================================================================================ */

	if (_imageTopLeftVisible) then { _imageTopLeft ctrlShow true; } else { _imageTopLeft ctrlShow false; };
	if (_imageTopRightVisible) then { _imageTopRight ctrlShow true; } else { _imageTopRight ctrlShow false; };
	if (_imageBottomLeftVisible) then { _imageBottomLeft ctrlShow true; } else { _imageBottomLeft ctrlShow false; };
	if (_imageBottomRightVisible) then { _imageBottomRight ctrlShow true; } else { _imageBottomRight ctrlShow false; };

	if (_textTopVisible) then
	{
		_backgroundTop ctrlShow true;
		_backgroundHeadlineTop ctrlShow true;
		_editBoxHeadlineTop ctrlShow true;
		_editBoxSubHeadlineTop ctrlShow true;
	}
	else
	{
		_backgroundTop ctrlShow false;
		_backgroundHeadlineTop ctrlShow false;
		_editBoxHeadlineTop ctrlShow false;
		_editBoxSubHeadlineTop ctrlShow false;
	};

	if (_textBottomVisible) then
	{
		_backgroundBottom ctrlShow true;
		_backgroundHeadlineBottom ctrlShow true;
		_editBoxHeadlineBottom ctrlShow true;
		_editBoxSubHeadlineBottom ctrlShow true;
	}
	else
	{
		_backgroundBottom ctrlShow false;
		_backgroundHeadlineBottom ctrlShow false;
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
}
else
{
	("GRAD_clipOverlay" call BIS_fnc_rscLayer) cutFadeOut 0;
	uiNamespace setVariable ["gradClipOverlayActive", false];
};

