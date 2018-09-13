tests
testJsonWebElement

	| json object |
	object := BPWebElement driver: nil elementID: 42.
	json := BPSmalltalkPlatform current jsonWrite: object asScriptArgumentJSON.
	self assert: (json select: [:c | c ~=$ ]) = '{"ELEMENT":42}'.