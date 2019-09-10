converting
asDictionary

	^ super asDictionary
		at: 'goog:chromeOptions' put: (Dictionary new
			at: 'w3c' put: false;
			at: 'args' put: (Array withAll: arguments);
			yourself);
		yourself
