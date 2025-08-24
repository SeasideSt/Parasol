private
waitUntil: valueBlock is: predicateBlock checkEvery: intervalDuration timeoutAfter: timeoutDuration with: alternativeValueBlock

	| stopDateTime value |
	
	stopDateTime := DateAndTime now + timeoutDuration.
	[
		value := valueBlock value.
		(predicateBlock value: value) ifTrue: [ ^ value ].
		(Delay forMilliseconds: intervalDuration asMilliSeconds) wait.

		DateAndTime now < stopDateTime
	] whileTrue.
	^ alternativeValueBlock cull: value