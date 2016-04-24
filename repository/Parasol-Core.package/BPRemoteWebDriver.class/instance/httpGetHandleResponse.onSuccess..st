private-http
httpGetHandleResponse: url onSuccess: aBlock

	^self handleResponse: (BPSmalltalkPlatform current httpGet: url) onSuccess: aBlock