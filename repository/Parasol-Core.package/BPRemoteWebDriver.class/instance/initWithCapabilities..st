initialize-release
initWithCapabilities: capabilities

	| response |
	self initialize.
	response := self
				httpPost: self baseDriverURL , 'session'
				jsonData: ((Dictionary new)
						at: 'desiredCapabilities' put: capabilities asDictionary;
						yourself)
				timeout: 30.
	sessionID := self sessionIdFromResponse: response