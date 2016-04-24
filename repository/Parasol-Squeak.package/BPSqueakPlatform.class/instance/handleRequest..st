facade
handleRequest: aBlock

	| response contents headers |
	response := aBlock value.
	contents := response content.
	headers := Dictionary new.
	response headersDo: [:key :value | headers at: key put: value].
	^(BPHttpResponse new)
		httpStatus: response code ;
		headers: headers;
		contents: contents;
		yourself