initialize-release
initWithCapabilities: desiredCapabilities

	| response |

	self initialize.
	response := self
		httpPost: self baseDriverURL , 'session'
		jsonData: desiredCapabilities privateSessionCreationJSON
		timeout: 120.
	self handleResponse: response onSuccess: [ :result |
		| capabilitiesDictionary |
		
		sessionID := result at: 'sessionId' ifAbsent: [ (result at: 'value') at: 'sessionId' ].
		capabilitiesDictionary := (result at: 'value') at: 'capabilities' ifAbsent: [ result at: 'value' ].
		capabilities := BPCapabilities withDictionary: capabilitiesDictionary ]
