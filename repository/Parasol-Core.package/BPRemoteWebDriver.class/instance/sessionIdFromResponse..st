initialize-release
sessionIdFromResponse: response
	| parsedResponse |
	response httpStatus = 200
		ifTrue: [ parsedResponse := self parseResponse: response.
			^ parsedResponse
				at: 'sessionId'
				ifAbsent: [ (parsedResponse at: 'value') at: 'sessionId' ] ].
	self
		error:
			'Unexpected response status code ' , response httpStatus printString
				, ' while creating web driver session.'