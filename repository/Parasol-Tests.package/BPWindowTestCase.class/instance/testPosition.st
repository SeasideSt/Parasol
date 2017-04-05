running
testPosition

	| window1 windowHandle1 windowHandle2 window2 |
	
	window1 := driver manage window.
	window1 setPosition: 25@30.
	self assert: window1 getPosition = (25@30).
	
	windowHandle1 := driver getWindowHandle.
	(driver findElementByPartialLinkText: 'Wikipedia') click.
	windowHandle2 := (driver getWindowHandles copyWithout: windowHandle1) first.
	driver switchTo window: windowHandle2.

	self flag: 'The following does not work, need to figure out why not'.
"	window2 := driver manage window.
	
	window1 setPosition: 52@66.
	window2 setPosition: 63@74.
	self assert: window1 getPosition = (52@66).
	self assert: window2 getPosition = (63@74)."
