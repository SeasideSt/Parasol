running
testClear

	| inputField submitButton secretField submittedValue |
	
	inputField := driver findElementByID: 'inputField'.
	submitButton := driver findElementByID: 'submitButton'.

	inputField sendKeys: 'XYZ'.
	inputField clear.
	inputField sendKeys: 'ABC'.
	inputField sendKeys: 'DEF'.
	submitButton click.
	submittedValue := self waitUntil: [ self componentUnderTest inputFieldValue ] is: [ :value | value notNil ]
		checkEvery: (Duration milliseconds: 100) timeoutAfter: (Duration seconds: 5) with: [ nil ].
	self assert: submittedValue equals: 'ABCDEF'.

	self should: [ inputField clear ] raise: BPStaleElementReferenceException.

	driver get: self baseURL asString.
	secretField := driver findElementByName: 'secretField'.
	self should: [ secretField clear ] raise: BPInvalidElementStateException.
