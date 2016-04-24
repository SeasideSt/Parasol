*Parasol-Convenience
openNewWindow

	self executeScript: 'window.open()' with: #(). 
	^ self getWindowHandles last.