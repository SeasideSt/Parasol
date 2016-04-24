running
testGetWindowHandles

	self assert: (driver getWindowHandles) = (Array with: driver getWindowHandle).