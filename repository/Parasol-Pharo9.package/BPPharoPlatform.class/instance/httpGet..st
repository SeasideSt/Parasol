facade
httpGet: url

	^self handleRequest: [ self httpClient url: url; get; response ]