running
testSize

	| window1 windowHandle1 windowHandle2 |
	
	window1 := driver manage window.
	window1 setSize: 500@600.
	self assert: window1 getSize = (500@600).
	
	windowHandle1 := driver getWindowHandle.
	(driver findElementByPartialLinkText: 'Wikipedia') click.
	self assert: (self waitUntil: [ driver getWindowHandles size > 1 ] checkEvery: (Duration milliseconds: 100) timeoutAfter: (Duration seconds: 5)).
	windowHandle2 := (driver getWindowHandles copyWithout: windowHandle1) first.
	driver switchTo window: windowHandle2.

	self flag: 'The following does not work, need to figure out why not'.
"	window2 := driver manage window.
	
	window1 setSize: 210@300.
	window2 setSize: 255@290.
	self assert: window1 getSize = (210@300).
	self assert: window2 getSize = (255@290)."