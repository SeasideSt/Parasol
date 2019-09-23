private
privateSessionCreationJSON

	^ Dictionary new
		at: 'capabilities' put: (Dictionary new
			at: 'firstMatch' put: (Array with: (dict copy
				at: 'goog:chromeOptions' put: (experimentalOptions copy
					at: 'args' put: (Array withAll: arguments);
					yourself);
				yourself));
			yourself);
		yourself