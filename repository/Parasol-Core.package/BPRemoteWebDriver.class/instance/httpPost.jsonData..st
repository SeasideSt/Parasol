private-http
httpPost: url jsonData: data

	^BPSmalltalkPlatform current
		httpPost: url
		data: (BPSmalltalkPlatform current jsonWrite: data)
		timeout: nil