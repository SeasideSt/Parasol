private-response-handling
handleResponse: response onSuccess: successBlock

	| result httpStatus |
	httpStatus := response httpStatus.
	httpStatus = 204 ifTrue: [ self error: 'Unexpected response without entity' ].
	result := BPSmalltalkPlatform current jsonRead: response contents.
	((httpStatus >= 400) & (httpStatus <= 599))
		ifTrue:[ self throwExceptionFor: httpStatus withResult: result ].
	httpStatus = 200 ifFalse: [ Error signal: 'Unexpected HTTP status code in response from driver' ].
	^ successBlock value: result
