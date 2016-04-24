private-http
httpPost: url jsonData: data timeout: timeout

	^BPSmalltalkPlatform current
		httpPost: url
		data: (BPSmalltalkPlatform current jsonWrite: data)
		timeout: timeout