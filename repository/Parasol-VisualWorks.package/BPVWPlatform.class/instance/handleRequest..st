facade
handleRequest: aBlock

	| response |
	response := aBlock on: Net.HttpException do: [:ex | ex parameter].
	^(BPHttpResponse new)
		httpStatus: response statusLine code asNumber;
		headers: response header registry;
		contents: response contents;
		yourself