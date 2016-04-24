private-response-handling
handleResponse: response onSuccess: successBlock

	| result status message exceptionClass httpStatus |
	httpStatus := response httpStatus.
	httpStatus = 404 ifTrue: [BPUnsupportedCommandException signal].
	httpStatus = 204 ifTrue: [ self error: 'Unexpected response without entity' ].
	result := BPSmalltalkPlatform current jsonRead: response contents.
	status := result at: 'status'.
	status = 0 ifTrue: [^successBlock value: result].
	message := (result at: 'value') at: 'message'.
	exceptionClass := self exceptions at: status ifAbsent: [BPException].
	BPSmalltalkPlatform current signalException: ((exceptionClass new)
				errorCode: status;
				messageText: message;
				yourself)