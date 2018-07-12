initialize-release
"protocol: initialize-release"
sessionIdFromResponse: response

	(#(302 303) includes: response httpStatus)
		ifTrue: 
			[^(((response headers at: 'location') reversed readStream)
				peekFor: $/;
				upTo: $/) reversed].
	response httpStatus = 200
		ifTrue: [^(BPSmalltalkPlatform current jsonRead: response contents) at: 'sessionId'].
	self
		error: 'Unexpected response status code ' , response httpStatus printString
				, ' while creating web driver session.'