running
expectedFailures

	(BPSmalltalkPlatform current class name = #BPGemStonePlatform) ifTrue: [ ^ super expectedFailures , #(testGetScreenshotAsByteArray) ].
	^ super expectedFailures
