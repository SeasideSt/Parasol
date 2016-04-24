misc.
takeScreenshot

	BPSmalltalkPlatform current
		fileWrite: 'Screenshot-' , self class name , '-' , self selector , '-'
				, screenshotCounter asString , '.png'
		contents: driver getScreenshotAsByteArray.
	screenshotCounter := screenshotCounter + 1