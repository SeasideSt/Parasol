private-response-handling
signalExceptionForErrorResponse: response withResult: result

	| httpStatus resultValue exceptionClass message |

	httpStatus := response httpStatus.
	resultValue := result at: 'value'.
	
	resultValue isString ifTrue: [
		BPSmalltalkPlatform current signalException: (BPUnknownServerException new
			httpResponse: response;
			errorCode: httpStatus;
			messageText: resultValue;
			yourself) ].
		
	exceptionClass := (resultValue includesKey: 'error')
		ifTrue: [ self exceptionFor: httpStatus errorCode: (resultValue at: 'error') ]
		ifFalse: [ BPUnknownServerException ].
	message := resultValue at: 'message'.
	BPSmalltalkPlatform current signalException: (exceptionClass new
		httpResponse: response;
		errorCode: httpStatus;
		messageText: message;
		yourself)
