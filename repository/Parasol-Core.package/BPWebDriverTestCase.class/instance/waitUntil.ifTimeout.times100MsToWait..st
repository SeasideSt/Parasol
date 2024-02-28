misc.
waitUntil: aCondition ifTimeout: timeoutBlock times100MsToWait: times

	| delay100ms |
	delay100ms := Delay forMilliseconds: 100.
	times timesRepeat: [
		aCondition value ifTrue: [ ^ true ]
						  ifFalse: [ delay100ms wait ] ].
	^ timeoutBlock value