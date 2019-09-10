accessing
setHeadless: boolean

	arguments remove: '--headless' ifAbsent: [ ].
	boolean ifTrue: [ arguments addAll: #('--headless' '--disable-gpu') ].
