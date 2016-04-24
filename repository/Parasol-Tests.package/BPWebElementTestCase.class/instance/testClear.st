running
testClear

	| inputField submitButton secretField |
	inputField := driver findElementByID: 'inputField'.
	submitButton := driver findElementByID: 'submitButton'.

	inputField sendKeys: 'XYZ'.
	inputField clear.
	inputField sendKeys: 'ABC'.
	inputField sendKeys: 'DEF'.
	submitButton click.
	self assert: self componentUnderTest inputFieldValue = 'ABCDEF'.

	self should: [ inputField clear ] raise: BPStaleElementReferenceException.

	driver get: self baseURL asString.
	secretField := driver findElementByName: 'secretField'.
	self should: [ secretField clear ] raise: BPElementNotVisibleException.
