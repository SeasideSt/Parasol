performing
httpDelete: url

	^self handleRequest: [ self httpClient url: url; delete; response ]
