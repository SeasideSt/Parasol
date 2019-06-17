private-response-handling
handleResponse: response onSuccess: successBlock

	| result status message exceptionClass httpStatus |
	httpStatus := response httpStatus.
	httpStatus = 204 ifTrue: [ self error: 'Unexpected response without entity' ].
	result := BPSmalltalkPlatform current jsonRead: response contents.
	"w3c exceptions:"
	((httpStatus >= 400) & (httpStatus <= 599))
		ifTrue:[ self throwExceptionFor: httpStatus withResult: result ].
	"delete-session may return a value of null; 
	handle that case in the next statement as long as we are not running in w3c mode"
	(result at: 'value') ifNil:[ ^ successBlock value: result ].
	status := result at: 'status'.
	status = 0 ifTrue: [ ^ successBlock value: result ].
	"json-wire protocol exceptions:"
	message := (result at: 'value') at: 'message'.
	exceptionClass := self oldExceptions at: status ifAbsent: [ BPException ].
	BPSmalltalkPlatform current signalException: ((exceptionClass new)
				errorCode: status;
				messageText: message;
				yourself)
	