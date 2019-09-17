running
testSendKeys

	| inputElement submitButton submittedValue |
	self assert: self componentUnderTest inputFieldValue isNil.
	inputElement := driver findElementByID: 'inputField'.
	inputElement sendKeys: 'foo' ,
		(String with: BPKeys shift) , 'bar' ,
		(String with: BPKeys shift) , 'baz' ,
		(String with: BPKeys shift) , 'qux'.
	inputElement sendKeys: 'quux'.
	submitButton := driver findElementByID: 'submitButton'.
	submitButton click.
	submittedValue := self waitUntil: [ self componentUnderTest inputFieldValue ] is: [ :value | value notNil ]
		checkEvery: (Duration milliseconds: 100) timeoutAfter: (Duration seconds: 5) with: [ nil ].
	self assert: submittedValue equals: 'fooBARbazQUXquux'.

	driver get: self baseURL asString.
	self assert: self componentUnderTest inputFieldValue isNil.
	self should: [ inputElement sendKeys: 'XYZ' ] raise: BPStaleElementReferenceException.
