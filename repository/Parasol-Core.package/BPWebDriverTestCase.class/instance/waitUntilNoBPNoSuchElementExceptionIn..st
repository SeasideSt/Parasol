misc.
waitUntilNoBPNoSuchElementExceptionIn: aBlock

	| delay100ms |
	delay100ms := Delay forMilliseconds: 100.
	30 timesRepeat: [
		[ ^ aBlock value ]
			on: BPNoSuchElementException
			do: [ :exc | delay100ms wait ] ].
	^ self error: 'Timeout waiting for element to be available'