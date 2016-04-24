facade
handleRequest: aBlock

	| response contents|
	response := aBlock value.
	contents := response contents.
	^(BPHttpResponse new)
		httpStatus: response status ;
		headers: response headers;
		contents: contents;
		yourself