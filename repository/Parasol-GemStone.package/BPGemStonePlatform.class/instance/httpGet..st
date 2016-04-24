performing
httpGet: url
	System commitTransaction ifFalse:[self error: 'Parasol error: commitTransaction failed.'].
	[ ^ self handleRequest: [ self httpClient url: url; get; response ] ] ensure: [ System continueTransaction ifFalse:[self error: 'Parasol error: continueTransaction failed.'].]