facade
handleRequest: aBlock

	| response contents|
	response := aBlock value.
	contents := response contents.
	"Carsten Haerle: Why is that necessary? Is it possible to have trailing zeros?  Not not be necessary."
	"contents := contents copyFrom:1 to: (contents findLast: [:c | c asInteger ~= 0 ])."
	^(BPHttpResponse new)
		httpStatus: response status ;
		headers: response headers;
		contents: contents;
		yourself