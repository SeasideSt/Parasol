tests
testParseWebElement

	| json parsed |
	json := '{"ELEMENT":"0"}'.
	parsed := BPSmalltalkPlatform current jsonRead: json.
	self assert: (parsed at: 'ELEMENT') = '0'