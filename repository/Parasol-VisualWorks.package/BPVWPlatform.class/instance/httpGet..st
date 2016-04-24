facade
httpGet: url

	^self handleRequest: [self httpClient get: url]