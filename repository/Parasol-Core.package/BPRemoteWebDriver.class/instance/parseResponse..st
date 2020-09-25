initialize-release
parseResponse: response
	| parsedResponse |
	parsedResponse := BPSmalltalkPlatform current
		jsonRead: response contents.
	^ parsedResponse