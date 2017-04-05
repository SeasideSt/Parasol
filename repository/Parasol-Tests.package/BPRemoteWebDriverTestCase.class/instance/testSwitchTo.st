running
testSwitchTo

	| windowHandle1 windowHandle2 |

	windowHandle1 := driver getWindowHandle.
	self assert: driver getTitle = 'Seaside'.
	self assert: driver getWindowHandles = (Array with: windowHandle1).

	(driver findElementByPartialLinkText: 'Wikipedia') click.
	self assert: driver getWindowHandle = windowHandle1.
	self assert: driver getTitle = 'Seaside'.
	self assert: driver getWindowHandles size = 2.

	windowHandle2 := (driver getWindowHandles copyWithout: windowHandle1) first.
	driver switchTo window: windowHandle2.
	self assert: driver getWindowHandle = windowHandle2.
	self assert: (driver getTitle beginsWith: 'Wikipedia').
