tests
testJsonWebElement

	| json object |
	object := BPWebElement driver: nil elementID: 42.
	json := BPSmalltalkPlatform current jsonWrite: object asScriptArgumentJSON.
	self assert: (json select: [:c | c ~=$ ]) = '{"element-6066-11e4-a52e-4f735466cecf":42}'.