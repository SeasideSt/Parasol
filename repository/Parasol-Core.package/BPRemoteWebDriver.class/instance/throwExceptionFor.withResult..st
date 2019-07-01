private-response-handling
throwExceptionFor: httpStatus withResult: aResult
	| result exceptionClass message |
	result := aResult at: 'value'.
	(result includesKey: 'error')
		ifTrue: [ exceptionClass := self exceptionFor: httpStatus errorCode: (result at: 'error') ]
		ifFalse: [ exceptionClass := BPUnknownServerException ].
	message := result at: 'message'.
	BPSmalltalkPlatform current signalException: ((exceptionClass new)
				errorCode: httpStatus;
				messageText: message;
				yourself)