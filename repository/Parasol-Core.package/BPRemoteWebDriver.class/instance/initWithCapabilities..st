initialize-release
"protocol: initialize-release"
initWithCapabilities: desiredCapabilities
	| response |
	self initialize.
	response := self
		httpPost: self baseDriverURL , 'session'
		jsonData:
			(Dictionary new
				at: 'desiredCapabilities' put: desiredCapabilities asDictionary;
				yourself)
		timeout: 30.
	sessionID := self sessionIdFromResponse: response.
	response contents isNil
		ifTrue: [ "I don't know how to get the capabilities from the browser when the session ID is set from the 301 or 302 redirected location.  I'd be interested in having this code work though. The WebDriver example requests seem to work fine though" ]
		ifFalse: [ capabilities := BPCapabilities
				withDictionary: ((BPSmalltalkPlatform current jsonRead: response contents) at: 'value') ]