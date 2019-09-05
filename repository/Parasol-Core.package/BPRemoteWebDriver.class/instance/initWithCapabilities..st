initialize-release
initWithCapabilities: desiredCapabilities

	| response |
	self initialize.
	response := self
				httpPost: self baseDriverURL , 'session'
				jsonData: ((Dictionary new)
						at: 'capabilities' put: (Dictionary new at: 'alwaysMatch' put:
							(Dictionary new at: 'browserName' put: 'chrome'; yourself); yourself);
						yourself)
				timeout: 120.
	sessionID := self sessionIdFromResponse: response.
	capabilities := BPCapabilities withDictionary: (((BPSmalltalkPlatform current jsonRead: response contents) at: 'value') at: 'capabilities').
