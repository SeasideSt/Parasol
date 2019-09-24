initialize-release
sessionIdFromResponse: response

	response httpStatus = 200 ifTrue: [
		^ ((BPSmalltalkPlatform current jsonRead: response contents) at: 'value') at: 'sessionId' ].
	self error: 'Unexpected response status code ' , response httpStatus printString , ' while creating web driver session.'
