facade
httpPost: url data: data timeout: seconds

	| data2 httpClient response |
	data2 := ZnEntity with: data
				type: (ZnMimeType main: 'application' sub: 'json') setCharSetUTF8.
	httpClient := self httpClient.
	seconds isNil ifFalse: [httpClient timeout: seconds].
	response := httpClient
				url: (ZnUrl fromString: url);
				entity: data2;
				post;
				response.
	^self handleRequest: [ response ]