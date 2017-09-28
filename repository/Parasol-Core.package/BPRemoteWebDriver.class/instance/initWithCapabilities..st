initialize-release
initWithCapabilities: desiredCapabilities

	| response |
	self initialize.
	response := self
				httpPost: self baseDriverURL , 'session'
				jsonData: ((Dictionary new)
						at: 'desiredCapabilities' put: desiredCapabilities asDictionary;
						yourself)
				timeout: 30.
	sessionID := self sessionIdFromResponse: response.
	capabilities := BPCapabilities withDictionary: ((BPSmalltalkPlatform current jsonRead: response contents) at: 'value').
