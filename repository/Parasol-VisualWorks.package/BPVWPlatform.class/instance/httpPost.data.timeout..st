facade
httpPost: url data: data timeout: timeout

	| postRequest client |
	client := self httpClient.
	timeout ifNotNil: [:x | client timeout: x * 1000].
	Net.MimeTypeDescriptor new contentType: 'application/json'.
	postRequest := Net.HttpRequest method: 'POST' url: url.
	postRequest contentType: 'application/json'.
	postRequest acceptEncoding: 'utf-8'.
	postRequest contentEncoding: 'utf-8'.
	postRequest byteSource: (data asByteArrayEncoding: #utf8) readStream.
	postRequest url: url.
	^self handleRequest: [client executeRequest: postRequest]