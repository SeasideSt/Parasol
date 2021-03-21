initialize-release
initWithCapabilities: desiredCapabilities
	| response parsedResponse |
	self initialize.
	response := self
		httpPost: self baseDriverURL , 'session'
		jsonData: desiredCapabilities privateSessionCreationJSON
		timeout: 120.
	sessionID := self sessionIdFromResponse: response.
	parsedResponse := self parseResponse: response.
	capabilities := BPCapabilities
		withDictionary:
			((parsedResponse at: 'value')
				at: 'capabilities'
				ifAbsent: [ parsedResponse at: 'value' ])