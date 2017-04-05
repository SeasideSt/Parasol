running
expectedFailures
	^ (GRPlatform current class == GRGemStonePlatform)
		ifTrue:[ #(testGetScreenshotAsByteArray) ]
		ifFalse:[ #() ]