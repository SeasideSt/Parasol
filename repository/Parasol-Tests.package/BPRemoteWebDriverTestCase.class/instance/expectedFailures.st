running
expectedFailures
	^ (GRPlatform current class == (Smalltalk at: #GRGemStonePlatform ifAbsent:[ nil ]))
		ifTrue:[ #(testGetScreenshotAsByteArray) ]
		ifFalse:[ #() ]