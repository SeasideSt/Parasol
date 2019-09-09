accessing
setHeadless: boolean

	arguments remove: '--headless'.
	boolean ifTrue: [ arguments addAll: #('--headless' '--disable-gpu') ].
