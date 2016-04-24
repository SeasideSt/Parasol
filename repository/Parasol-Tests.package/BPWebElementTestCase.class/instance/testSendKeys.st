running
testSendKeys

	| inputElement submitButton |
	self assert: self componentUnderTest inputFieldValue isNil.
	inputElement := driver findElementByID: 'inputField'.
	inputElement sendKeys: 'XYZ'.
	submitButton := driver findElementByID: 'submitButton'.
	submitButton click.
	self assert: self componentUnderTest inputFieldValue = 'XYZ'.

	driver get: self baseURL asString.
	self assert: self componentUnderTest inputFieldValue isNil.
	self should: [ inputElement sendKeys: 'XYZ' ] raise: BPStaleElementReferenceException.
