running
expectedFailures

	(BPSmalltalkPlatform current class name = #BPGemStonePlatform) ifTrue: [ ^ super expectedFailures , #(testGetScreenshotAsByteArray) ].
	(BPSmalltalkPlatform current class name = #BPSqueakPlatform) ifFalse: [ ^ super expectedFailures , #(testCookies) ].
	^ super expectedFailures
