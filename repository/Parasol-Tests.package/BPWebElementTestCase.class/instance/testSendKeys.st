running
testSendKeys

	| inputElement submitButton submittedValue |
	self assert: self componentUnderTest inputFieldValue isNil.
	inputElement := driver findElementByID: 'inputField'.
	inputElement click.
	inputElement sendKeys: 'foo' ,
		(String with: BPKeys shift) , 'bar' ,
		(String with: BPKeys shift) , 'baz' ,
		(String with: BPKeys shift) , 'qux'.
	inputElement sendKeys: 'quux'.
	inputElement sendKeys: 'QU' , (String with: BPKeys shift) , 'UZna' , (String with: BPKeys shift) , 'rf'.
	submitButton := driver findElementByID: 'submitButton'.
	submitButton submit.
	submittedValue := self waitUntil: [ self componentUnderTest inputFieldValue ] is: [ :value | value notNil ]
		checkEvery: (Duration milliseconds: 100) timeoutAfter: (Duration seconds: 5) with: [ nil ].
	self assert: submittedValue equals: 'fooBARbazQUXquuxQUUZNArf'.

	driver get: self baseURL asString.
	self assert: self componentUnderTest inputFieldValue isNil.
	self should: [ inputElement sendKeys: 'XYZ' ] raise: BPStaleElementReferenceException.
