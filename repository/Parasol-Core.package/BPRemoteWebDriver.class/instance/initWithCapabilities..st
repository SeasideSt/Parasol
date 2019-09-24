initialize-release
initWithCapabilities: desiredCapabilities

	| response |
	self initialize.
	response := self
				httpPost: self baseDriverURL , 'session'
				jsonData: desiredCapabilities privateSessionCreationJSON
				timeout: 120.
	sessionID := self sessionIdFromResponse: response.
	capabilities := BPCapabilities withDictionary: (((BPSmalltalkPlatform current jsonRead: response contents) at: 'value') at: 'capabilities').
