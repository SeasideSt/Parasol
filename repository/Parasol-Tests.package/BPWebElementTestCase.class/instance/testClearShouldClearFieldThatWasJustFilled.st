running
testClearShouldClearFieldThatWasJustFilled

	| inputField |
	inputField := driver findElementByID: 'inputField'.
	inputField sendKeys: 'XYZ'.
	inputField clear.
	
	self assert: inputField getText = ''