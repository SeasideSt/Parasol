converting
asDictionary

	^ super asDictionary
		at: 'goog:chromeOptions' put: (experimentalOptions copy
			at: 'w3c' put: false;
			at: 'args' put: (Array withAll: arguments);
			yourself);
		yourself
