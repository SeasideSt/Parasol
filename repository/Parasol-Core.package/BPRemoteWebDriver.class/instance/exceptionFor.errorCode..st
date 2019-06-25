private-response-handling
exceptionFor: httpStatus errorCode: aString
	^ (self exceptions at: httpStatus ifAbsent: [ ^ BPException ])
		at: aString
		ifAbsent: [ BPException ]