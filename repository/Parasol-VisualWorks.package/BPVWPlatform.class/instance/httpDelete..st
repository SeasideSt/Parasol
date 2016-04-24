facade
httpDelete: url

	^self handleRequest: [self httpClient delete: url]