private
privateSessionCreationJSON

	^ (Dictionary new)
		at: 'desiredCapabilities' put: self asDictionary;
		yourself