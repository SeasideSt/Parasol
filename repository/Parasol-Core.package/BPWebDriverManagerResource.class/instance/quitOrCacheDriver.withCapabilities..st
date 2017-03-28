accessing
quitOrCacheDriver: driver withCapabilities: capabilities

	drivers at: capabilities ifPresent: [ :cachedDriver | self quitDriver: driver. ^ self ].
	[
		| windowHandles |
		driver getWindowHandles allButFirst do: [ :windowHandle | driver switchTo window: windowHandle. driver close ].
		windowHandles := driver getWindowHandles.
		(windowHandles size = 1) ifFalse: [ self quitDriver: driver. ^ self ].
		driver switchTo window: windowHandles anyOne.
		driver get: 'about:'. "<-- Reset the browser window to a blank page, might be executing scripts, timed refreshes or whatever in the background otherwise."
		driver getKeyboard sendKeys: (String with: BPKeys null). "<-- release any modifier keys."
	] on: (BPNoSuchSessionException , BPUnknownServerException) do: [ :ex | self quitDriver: driver. ^ self ].
	drivers at: capabilities put: driver.